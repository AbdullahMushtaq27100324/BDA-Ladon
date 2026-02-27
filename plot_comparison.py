import pandas as pd
import matplotlib.pyplot as plt
import argparse

parser = argparse.ArgumentParser(description="Plot Latency vs Throughput for Ladon Baselines")
parser.add_argument('-o', '--output', required=True, help="Name of the output PNG file")
parser.add_argument('csv_files', nargs='+', help="Paths to the result-summary.csv files")
args = parser.parse_args()

try:
    dfs = [pd.read_csv(f) for f in args.csv_files]
    df = pd.concat(dfs, ignore_index=True)

    # Convert columns to numeric, forcing errors to NaN, then drop the NaNs
    df['throughput-raw'] = pd.to_numeric(df['throughput-raw'], errors='coerce')
    df['latency-avg-raw'] = pd.to_numeric(df['latency-avg-raw'], errors='coerce')
    df = df.dropna(subset=['throughput-raw', 'latency-avg-raw'])

    plt.figure(figsize=(10, 6))

    # for orderer in df['orderer'].unique():
    #     subset = df[df['orderer'] == orderer].sort_values('throughput-raw')
    #     plt.plot(subset['throughput-raw'], subset['latency-avg-raw'], 
    #              marker='o', linewidth=2, markersize=8, label=orderer)

    # Create a new column that combines the Protocol and the Batch Size for the legend
    df['plot_label'] = df['orderer'] + " (Batch " + df['batchsize'].astype(str) + ")"

    for label in df['plot_label'].unique():
        subset = df[df['plot_label'] == label].sort_values('throughput-raw')
        plt.plot(subset['throughput-raw'], subset['latency-avg-raw'], 
                 marker='o', linewidth=2, markersize=8, label=label)

    plt.xlabel('Actual Throughput (requests/sec)', fontsize=12, fontweight='bold')
    plt.ylabel('Average Latency (ms)', fontsize=12, fontweight='bold')
    plt.title('Multi-BFT Consensus: Latency vs Throughput', fontsize=14, fontweight='bold')
    plt.grid(True, linestyle='--', alpha=0.7)
    plt.legend(title="Protocol", fontsize=11)
    
    plt.savefig(args.output, bbox_inches='tight', dpi=300)
    print(f"✨ Success! Graph saved as: {args.output}")

except Exception as e:
    print(f"Error generating plot: {e}")