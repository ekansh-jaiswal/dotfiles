# 🛠️ Aesthetic Arch Dotfiles

[![Arch Linux](https://img.shields.io/badge/OS-Arch%20Linux-blue?logo=arch-linux)](https://archlinux.org/)
[![WM](https://img.shields.io/badge/WM-Openbox-orange)](http://openbox.org/)

A highly customized, offensive-security-focused environment optimized for **Capture The Flag (CTF)** competitions and **Automated Penetration Testing**.

## 🎨 Environment Highlights
- **Window Manager:** Openbox (Customized for low-latency workflow)
- **Status Bar:** Polybar (Shapes Theme)
- **Compositor:** Picom (Transparency & Rounded Corners)
- **Shell:** Customized terminal with essential aliases for `nmap`, `ffuf`, and `metasploit`.

## 🚀 Quick Start / Recovery
If you are on a fresh Arch install, run the following to restore the entire environment:

```bash
git clone https://github.com/ekansh-jaiswal/dotfiles.git
cd dotfiles
chmod +x setup.sh
./setup.sh
```

## 🛡️ Fail-Safe Features
- **Atomic Symlinking:** Prevents configuration loops and file corruption.
- **Auto-Backup:** Any existing configs are moved to a timestamped backup folder before deployment.
- **Dependency Check:** Automatically installs `paru` and necessary Nerd Fonts.

## 📁 Repository Structure
- \`config/openbox/\`: Core WM settings & startup hooks.
- \`config/polybar/\`: Multi-module status bar configurations.
- \`config/picom/\`: Blur and shadow settings for the "aesthetic" feel.
- \`setup.sh\`: The bullet-proof installation script.

---
*Maintained by [Ekansh Jaiswal](https://github.com/ekansh-jaiswal)*
