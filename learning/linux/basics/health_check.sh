#!/bin/bash
echo "=== SYSTEM HEALTH REPORT ==="
date
echo "--- User: $USER ---"

echo "1. Disk Space Usage:"
df -h | grep "/$"

echo "2. Memory Usage (MB):"
free -m | grep "Mem"

echo "3. Network Status:"
ping -c 1 google.com > /dev/null && echo "Internet: CONNECTED" || echo "Internet: DISCONNECTED"

echo "=== END OF REPORT ==="
