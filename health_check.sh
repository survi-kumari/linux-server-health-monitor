#!/bin/bash
echo "===== Linux Server Health check ====="
echo "=====Disk Check====="
df-h
echo "=====Memory Check====="
echo "=====CPU Check====="
echo "=====Network Check====="
echo "=====Port Check====="
echo "=====Log Check====="
free -h
top -b -n 1 | head -n 10
ping -c 2 google.com
ss -tuln
grep -in "error" app.log
echo "===== Health Check Project Completed ====="
