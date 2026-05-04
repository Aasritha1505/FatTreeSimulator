#!/usr/bin/env python3
import sys
import os
import glob
import re
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

# We now track the base metric names to group min/max/mean together
METRIC_BASES = ['fct', 'throughput']

def get_label(module):
    """Extracts the network path to use for sorting."""
    m = re.search(r'(Pod\[\d+\]\.racks\[\d+\]\.servers\[\d+\])', module)
    return m.group(1) if m else module.split('.')[-2]

def get_sort_key(label):
    """Allows proper numerical sorting of Pods/Racks/Servers."""
    return [int(n) for n in re.findall(r'\d+', label)]

def parse_all_sca(files):
    """Parses multiple .sca files for mean, min, and max values."""
    # Structure: { 'fct': { 'Server 0': {'mean': [], 'min': [], 'max': []} } }
    all_data = {m: {} for m in METRIC_BASES}
    
    for path in files:
        with open(path) as f:
            for line in f:
                if line.startswith('scalar'):
                    parts = line.split()
                    if len(parts) >= 4:
                        module, stat, val = parts[1], parts[2], float(parts[3])
                        
                        # Split 'fct:mean' into 'fct' and 'mean'
                        base_stat = stat.split(':')[0]
                        stat_type = stat.split(':')[1] if ':' in stat else 'mean'
                        
                        if base_stat in METRIC_BASES and stat_type in ['mean', 'min', 'max']:
                            label = get_label(module)
                            if label not in all_data[base_stat]: 
                                all_data[base_stat][label] = {'mean': [], 'min': [], 'max': []}
                            all_data[base_stat][label][stat_type].append(val)
    return all_data

def plot_with_highs_and_lows(data, metric, config, out_dir):
    """Plots a single chart with the average bar and min/max error lines."""
    if not data: return
    
    sorted_labels = sorted(data.keys(), key=get_sort_key)
    x_labels = ["Server {}".format(i) for i in range(len(sorted_labels))]
    
    means = []
    lower_errors = []
    upper_errors = []
    
    for l in sorted_labels:
        server_data = data[l]
        # Average the means across runs
        g_mean = sum(server_data['mean']) / len(server_data['mean']) if server_data['mean'] else 0
        
        # Absolute minimum across runs (fallback to mean if missing)
        g_min = min(server_data['min']) if server_data['min'] else g_mean
        
        # Absolute maximum across runs
        g_max = max(server_data['max']) if server_data['max'] else g_mean
        
        means.append(g_mean)
        
        # Error bars in matplotlib require the relative distance from the mean
        lower_errors.append(g_mean - g_min)
        upper_errors.append(g_max - g_mean)

    plt.figure(figsize=(12, 6))
    
    # Plot bars with yerr (y-error) to show the highs and lows
    bars = plt.bar(x_labels, means, yerr=[lower_errors, upper_errors], 
                   color='#2563eb', edgecolor='black', capsize=4, 
                   error_kw={'elinewidth': 1.5, 'ecolor': '#dc2626'})
    
    # Rename FCT to Latency for clarity on the graph
    title_metric = "Latency (FCT)" if metric == 'fct' else "Throughput"
    unit = "(Seconds)" if metric == 'fct' else "(Bytes/sec)"
    
    plt.title("{} Across All Servers\nBlue Bar = Average | Red Lines = Highs & Lows\nConfig: {}".format(
        title_metric, config), pad=15)
    
    plt.ylabel("{} {}".format(title_metric, unit))
    
    rotation = 45 if len(x_labels) > 8 else 0
    plt.xticks(rotation=rotation)
    plt.grid(axis='y', linestyle='--', alpha=0.4, zorder=0)
    
    # Add exact mean values inside the bars to avoid overlapping the max lines
    for bar, m_val in zip(bars, means):
        plt.text(bar.get_x() + bar.get_width() / 2, m_val * 0.5,
                 "{:.3g}".format(m_val), ha='center', va='center', 
                 color='white', fontsize=8, fontweight='bold', rotation=90)

    plt.tight_layout()
    fname = os.path.join(out_dir, "{}_{}_high_low_mean.png".format(config, metric))
    plt.savefig(fname, dpi=150)
    plt.close()
    print("  saved high/low plot: {}".format(fname))

def plot_combined_time_series(vec_path, config, out_dir):
    """Parses .vec file and plots ALL servers on a single timeline."""
    series = {}
    with open(vec_path) as f:
        for line in f:
            parts = line.split()
            if not parts: continue
            if parts[0] == 'vector' and len(parts) >= 4:
                v_id, module, v_name = parts[1], parts[2], parts[3]
                if 'fct:vector' in v_name:
                    series[v_id] = {'label': get_label(module), 't': [], 'v': []}
            elif parts[0].isdigit() and parts[0] in series:
                v_id = parts[0]
                series[v_id]['t'].append(float(parts[2]))
                series[v_id]['v'].append(float(parts[3]))

    if not series: return

    plt.figure(figsize=(12, 6))
    sorted_vids = sorted(series.keys(), key=lambda v: get_sort_key(series[v]['label']))
    
    for i, v_id in enumerate(sorted_vids):
        data = series[v_id]
        if not data['t']: continue
        plt.plot(data['t'], data['v'], marker='.', markersize=4, linestyle='-', 
                 linewidth=1, alpha=0.7, label="Server {}".format(i))

    plt.title("Latency (FCT) Over Time - All Servers\nConfig: {}".format(config))
    plt.xlabel("Simulation Time (Seconds)")
    plt.ylabel("Latency / FCT (Seconds)")
    
    plt.legend(bbox_to_anchor=(1.01, 1), loc="upper left", fontsize='small')
    plt.grid(True, alpha=0.3)
    plt.tight_layout()
    
    fname = "{}_timeseries_combined.png".format(config)
    plt.savefig(os.path.join(out_dir, fname), dpi=150)
    plt.close()
    print("  saved combined time series: {}".format(fname))

def main():
    if len(sys.argv) < 2:
        print("Usage: python3 plot_results.py <config_name>")
        sys.exit(1)

    config = sys.argv[1]
    res_dir, out_dir = 'results', 'graphs'
    if not os.path.exists(out_dir): 
        os.makedirs(out_dir)

    # 1. Process High/Low/Mean (Reads up to 5 latest .sca files)
    sca_files = sorted(glob.glob(os.path.join(res_dir, "{}-*.sca".format(config))))[-5:]
    if sca_files:
        print("Processing {} .sca files for high/low/mean...".format(len(sca_files)))
        sca_data = parse_all_sca(sca_files)
        for metric in METRIC_BASES:
            plot_with_highs_and_lows(sca_data[metric], metric, config, out_dir)

    # 2. Process Combined Time Series
    vec_files = sorted(glob.glob(os.path.join(res_dir, "{}-*.vec".format(config))))
    if vec_files:
        print("Processing latest .vec file for combined time series...")
        plot_combined_time_series(vec_files[-1], config, out_dir)

if __name__ == '__main__':
    main()