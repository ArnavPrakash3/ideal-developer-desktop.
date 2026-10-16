
#!/usr/bin/env bash

while true; do
  clear
  echo "================================"
  echo "   IDEAL DEVELOPER DESKTOP"
  echo "================================"
  echo "Date: $(date)"
  echo "Host: $(hostname)"
  echo "Uptime: $(uptime -p 2>/dev/null || uptime)"

  echo
  echo "Memory usage:"
  if command -v free >/dev/null 2>&1; then
    free -h
  else
    echo "Memory information unavailable"
  fi

  echo
  echo "Disk usage:"
  df -h / | tail -n 1

  echo
  echo "CPU information:"
  if command -v top >/dev/null 2>&1; then
    top -bn1 | head -n 5
  else
    echo "CPU information unavailable"
  fi

  echo
  echo "Refreshing every 5 seconds. Press Ctrl+C to stop."
  sleep 5
done
