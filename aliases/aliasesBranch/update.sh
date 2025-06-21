# Detect distro and update with correct package manager
if [ -f /etc/arch-release ]; then
    echo "🔧 Updating Arch Linux..."
    sudo pacman -Syu && sudo paccache -r
elif [ -f /etc/debian_version ]; then
    echo "🔧 Updating Debian/Ubuntu..."
    sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y
elif [ -f /etc/fedora-release ]; then
    echo "🔧 Updating Fedora..."
    sudo dnf upgrade --refresh -y && sudo dnf autoremove -y
else
    echo "⚠️ Unsupported distribution — skipping package manager update."
fi

# Update Flatpak if installed
if command -v flatpak >/dev/null 2>&1; then
    echo "📦 Updating Flatpak..."
    flatpak update -y
fi

# Update Snap if installed
if command -v snap >/dev/null 2>&1; then
    echo "📦 Updating Snap..."
    sudo snap refresh
fi
