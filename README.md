# Ideal Developer Desktop

A keyboard-driven Linux developer workstation setup focused on consistency, quick navigation, and lightweight system monitoring.

> **Platform:** Ubuntu 22.04/24.04 with GNOME and Bash. The setup script installs useful CLI tools and adds a compact system monitor. Desktop appearance and keyboard shortcuts are configured separately because GNOME extension availability varies by release.

## Features

- Consistent dark terminal prompt using Starship (optional)
- Keyboard-first terminal and workspace workflow
- One-command setup for common CLI tools
- Refreshable CPU, memory, disk, battery, and uptime monitor
- Small, readable dotfiles and shell aliases
- Safe setup: backs up the existing `.bashrc` before editing

## Quick start

Clone this repository, then run:

```bash
chmod +x scripts/*.sh
./scripts/setup.sh
```

Restart the terminal after setup. To run the monitor:

```bash
./scripts/system-status.sh
```

Press `q` to quit the monitor.

## Suggested keyboard shortcuts (GNOME)

Open **Settings → Keyboard → View and Customize Shortcuts** and configure:

| Action | Suggested shortcut |
|---|---|
| Open terminal | `Ctrl + Alt + T` |
| Switch workspace left/right | `Super + Page Up / Page Down` |
| Move window to workspace | `Super + Shift + Page Up / Page Down` |
| Take screenshot | `Shift + Print` |
| Launch app overview | `Super` |

Some shortcuts may already be assigned by your distribution.

## Consistent visual theme

Use **Settings → Appearance → Dark**. For a terminal, install Kitty separately if desired and copy `config/kitty.conf` to `~/.config/kitty/kitty.conf`. The included configuration uses a dark background, readable font sizing, and simple tab styling.

## Repository layout

```text
.
├── config/
│   └── kitty.conf
├── scripts/
│   ├── setup.sh
│   └── system-status.sh
├── shell/
│   └── aliases.sh
└── README.md
```

## Screenshots for submission

Add genuine screenshots from your own Linux environment to `screenshots/`, for example:
1. Terminal showing the prompt and aliases.
2. The system monitor running.
3. GNOME keyboard shortcut settings or desktop appearance.

Do not use mockups as evidence of a running setup. If you are preparing this repository on macOS, the Linux desktop configuration has **not** been applied or tested on Linux yet.

## Safety and portability

The setup script checks the package manager, requests administrator privileges only for package installation, and makes a timestamped backup of `.bashrc`. Review scripts before running them.
