# dotfiles

Personal Arch Linux dotfiles for an Openbox-based desktop focused on a fast keyboard-driven workflow, clean aesthetics, and a practical terminal environment.

This repository contains my current desktop and shell setup, including:

- **Openbox** window manager configuration
- **Polybar** themes and launcher
- **Picom** compositor settings
- **Fastfetch** terminal welcome screen
- personal **Zsh** configuration

> [!IMPORTANT]
> This is a **personal dotfiles repository**, not a fully portable universal setup.
> It is designed primarily for my own Arch Linux environment and may require adjustments on another machine.

---

## Table of Contents

- [Overview](#overview)
- [What is Included](#what-is-included)
- [Repository Structure](#repository-structure)
- [License](#license)

---

## Overview

This repo stores the configuration files for my current Linux desktop environment.

The setup is built around:

- **Arch Linux**
- **Openbox**
- **Polybar**
- **Picom**
- **Zsh**
- **Fastfetch**

The goal is to keep a desktop that feels lightweight, visually clean, and comfortable for daily terminal-heavy work.

---

## What is Included

### Desktop
- Openbox configuration
- Polybar themes and launcher
- Picom compositor config
- GTK config

### Terminal / Shell
- Zsh configuration
- Powerlevel10k theme setup
- plugin-based shell enhancements
- Fastfetch startup output

### Misc
- install/setup script
- package list placeholder

---

## Repository Structure

```text
dotfiles/
├── .gitignore
├── .zshrc
├── README.md
├── pkglist.txt
├── setup.sh
└── config/
    ├── fastfetch/
    │   ├── blackhole.txt
    │   └── style.jsonc
    ├── gtk-3.0/
    ├── openbox/
    │   ├── autostart
    │   └── rc.xml
    ├── picom/
    │   └── picom.conf
    └── polybar/
        ├── blocks/
        ├── colorblocks/
        ├── cuts/
        ├── docky/
        ├── forest/
        ├── grayblocks/
        ├── hack/
        ├── material/
        ├── panels/
        ├── pwidgets/
        ├── shades/
        ├── shapes/
        └── launch.sh
