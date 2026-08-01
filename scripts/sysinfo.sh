#!/bin/bash
# sysinfo.sh - prints basic system information

echo "===== System Info ====="

echo -n "Current user: "
whoami

echo -n "Current date: "
date

echo "Disk usage:"
df -h
