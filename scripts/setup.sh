
#!/usr/bin/env bash
set -euo pipefail

if [[ "$EUID" -eq 0 ]]; then
  echo "Run this script as your normal user, not with sudo."
  exit 1
fi

if ! command -v apt-get >/dev/null 2>&1; then
  echo "This setup script requires Ubuntu or Debian Linux."
  exit 1
fi

echo "Installing developer tools..."
sudo apt-get update
sudo apt-get install -y git curl btop htop lm-sensors

mkdir -p "$HOME/.config" "$HOME/.local/bin"

if [[ -f "$HOME/.bashrc" ]]; then
  cp "$HOME/.bashrc" "$HOME/.bashrc.backup"
fi

REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"

cp "$REPO_DIR/shell/aliases.sh" "$HOME/.config/ideal-desktop-aliases.sh"
cp "$REPO_DIR/scripts/system-status.sh" "$HOME/.local/bin/system-status"
chmod +x "$HOME/.local/bin/system-status"

if ! grep -q 'ideal-desktop-aliases' "$HOME/.bashrc"; then
  echo 'source "$HOME/.config/ideal-desktop-aliases.sh"' >> "$HOME/.bashrc"
fi

echo "Setup complete! Restart your terminal."
echo "Run system-status to monitor your system."
