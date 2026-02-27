#!/bin/bash

# --- 1. SET THE DEFAULTS ---
PROTOCOL="Pbft"
THROUGHPUTS="256 512 1024 1500 2000"
NODES="4"
CLIENTS="1"
BATCH="512"
DURATION="20"
PAYLOAD="500"

# --- 2. PARSE TERMINAL FLAGS ---
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -p|--protocol) PROTOCOL="$2"; shift ;;
        -t|--throughputs) THROUGHPUTS="$2"; shift ;;
        -n|--nodes) NODES="$2"; shift ;;
        -c|--clients) CLIENTS="$2"; shift ;;
        -b|--batchsize) BATCH="$2"; shift ;;
        -d|--duration) DURATION="$2"; shift ;;
        -s|--payload) PAYLOAD="$2"; shift ;;
        *) echo "❌ Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done

CONFIG="scripts/experiment-configuration/generate-local-config.sh"

echo "⚙️  Configuring Multi-Experiment Matrix:"
echo "   Protocol(s):  $PROTOCOL"
echo "   Nodes:        $NODES"
echo "   Batch(es):    $BATCH"
echo "   Throughputs:  $THROUGHPUTS"

# --- 3. INJECT INTO CONFIG FILE ---
sed -i "s/^orderers=.*/orderers=\"$PROTOCOL\"/" $CONFIG
sed -i "s/^systemSizes=.*/systemSizes=\"$NODES\"/" $CONFIG
sed -i "s/^clients1=.*/clients1=\"$CLIENTS\"/" $CONFIG
sed -i "s/^batchsizes=.*/batchsizes=\"$BATCH\"/" $CONFIG
sed -i "s/^durations=.*/durations=\"$DURATION\"/" $CONFIG
sed -i "s/^payloadSizes=.*/payloadSizes=\"$PAYLOAD\"/" $CONFIG

for NODE in $NODES; do
    sed -i "s/^throughputsAuthPbft\[$NODE\]=.*/throughputsAuthPbft[$NODE]=\"$THROUGHPUTS\"/" $CONFIG
    sed -i "s/^throughputsAuthHotStuff\[$NODE\]=.*/throughputsAuthHotStuff[$NODE]=\"$THROUGHPUTS\"/" $CONFIG
done

echo "🚀 Launching deployment matrix..."
./deploy.sh local new $CONFIG

# --- 4. DISK CLEANUP (NEW) ---
# Find the latest local-xxxx folder
LATEST_FOLDER=$(ls -td deployment-data/local-*/ | head -n1)
if [ -d "$LATEST_FOLDER/experiment-output" ]; then
    echo "🧹 Scrubbing raw logs to save space (keeping CSV)..."
    rm -rf "$LATEST_FOLDER/experiment-output"
    echo "✅ Disk space preserved!"
fi