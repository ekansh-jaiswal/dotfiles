#!/usr/bin/env bash
set -euo pipefail

# --- Configuration ---
DOT_DIR="$HOME/new_dotfiles"
CONF_DIR="$HOME/.config"
BACKUP_DIR="$HOME/dotfiles_backup_$(date +%Y%m%d_%H%M%S)"

# --- Visuals ---
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}🛡️ Initializing Hardened Setup for Ekansh's Arch Environment...${NC}"

# 1. Root Check
sudo -v || { echo "Failure: Sudo access required."; exit 1; }

# 2. Dependency Audit
echo -e "${BLUE}📦 Auditing System Packages...${NC}"
if ! command -v paru &> /dev/null; then
    sudo pacman -S --needed --noconfirm base-devel git
    git clone https://aur.archlinux.org/paru-bin.git /tmp/paru-bin
    (cd /tmp/paru-bin && makepkg -si --noconfirm)
fi

SYSTEM_PKGS=("openbox" "polybar" "picom" "feh" "nitrogen" "lxappearance" "rofi" "thunar" "ttf-jetbrains-mono-nerd" "brightnessctl" "playerctl" "python-pip" "python-virtualenv")
paru -S --needed --noconfirm "${SYSTEM_PKGS[@]}"

# 3. Atomic Symlinking
safe_link() {
    local src="$1" dest="$2"
    [ ! -e "$src" ] && return
    mkdir -p "$(dirname "$dest")"
    if [ -e "$dest" ] || [ -L "$dest" ]; then
        if [ "$(readlink -f "$dest")" != "$(readlink -f "$src")" ]; then
            mkdir -p "$BACKUP_DIR"
            mv "$dest" "$BACKUP_DIR/"
        else
            return
        fi
    fi
    ln -sf "$src" "$dest"
}

# 4. Deployment
echo -e "${BLUE}🔗 Deploying Configs...${NC}"
safe_link "$DOT_DIR/config/openbox/rc.xml" "$CONF_DIR/openbox/rc.xml"
safe_link "$DOT_DIR/config/openbox/autostart" "$CONF_DIR/openbox/autostart"
safe_link "$DOT_DIR/config/polybar" "$CONF_DIR/polybar"
safe_link "$DOT_DIR/config/picom/picom.conf" "$CONF_DIR/picom/picom.conf"

chmod +x "$DOT_DIR/config/openbox/autostart"
find "$DOT_DIR/config/polybar" -type f -name "*.sh" -exec chmod +x {} +

echo -e "${GREEN}✅ Setup Complete. Backup stored in: $BACKUP_DIR${NC}"
