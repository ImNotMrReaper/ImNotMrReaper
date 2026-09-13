#!/usr/bin/env bash
# ==============================================================================
# 💀 Mr. Reaper's Linux Ecosystem Master Installer
# One-Line Remote Execution:
#   curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/ImNotMrReaper/main/install.sh | bash
# Non-Interactive Complete Setup:
#   curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/ImNotMrReaper/main/install.sh | bash -s -- --all
# ==============================================================================

set -e

# ANSI Color & Style Palette
BOLD="\033[1m"
DIM="\033[2m"
CYAN="\033[96m"
PURPLE="\033[95m"
GREEN="\033[92m"
YELLOW="\033[93m"
RED="\033[91m"
MAGENTA="\033[35m"
RESET="\033[0m"

# Project Raw Script URLs
JOYCON_INSTALL_URL="https://raw.githubusercontent.com/ImNotMrReaper/joycon-mouse/main/install.sh"
HOWDY_INSTALL_URL="https://raw.githubusercontent.com/ImNotMrReaper/howdy-face-id-linux/main/install.sh"
FPRINT_INSTALL_URL="https://raw.githubusercontent.com/ImNotMrReaper/digitalpersona-uareu-linux/main/install.sh"
NOTES_INSTALL_URL="https://raw.githubusercontent.com/ImNotMrReaper/reapers-notes/main/install.sh"
AUTOCOMPLETE_INSTALL_URL="https://raw.githubusercontent.com/ImNotMrReaper/tui-autocomplete/main/install.sh"
RESEARCH_INSTALL_URL="https://raw.githubusercontent.com/ImNotMrReaper/deep-research/main/install.sh"
LINK_INSTALL_URL="https://raw.githubusercontent.com/ImNotMrReaper/antigravity-link/main/install.sh"
RESTORE_INSTALL_URL="https://raw.githubusercontent.com/ImNotMrReaper/display-window-restorer/main/install.sh"

print_banner() {
    clear 2>/dev/null || true
    echo -e "${PURPLE}"
    cat << 'EOF_BANNER'
  ____  _____    _    ____  _____ ____  
 |  _ \| ____|  / \  |  _ \| ____|  _ \ 
 | |_) |  _|   / _ \ | |_) |  _| | |_) |
 |  _ <| |___ / ___ \|  __/| |___|  _ < 
 |_| \_\_____/_/   \_\_|   |_____|_| \_\
EOF_BANNER
    echo -e "${RESET}"
    echo -e "  ${BOLD}${PURPLE}💀 MR. REAPER'S LINUX HARDWARE & DEV ECOSYSTEM${RESET}"
    echo -e "  ${DIM}Universal Multi-Distribution Suite Installer & Setup Wizard${RESET}"
    echo -e "${PURPLE}===============================================================================${RESET}\n"
}

# Detection Helper
detect_distro() {
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        DISTRO_NAME="${NAME:-Linux}"
        DISTRO_ID="${ID:-unknown}"
    else
        DISTRO_NAME="$(uname -s)"
        DISTRO_ID="unknown"
    fi
}

install_joycon() {
    echo -e "\n${CYAN}>>> [1/7] Installing Joy-Con Mouse & Universal Remote...${RESET}"
    curl -fsSL "${JOYCON_INSTALL_URL}" | bash
}

install_howdy() {
    echo -e "\n${CYAN}>>> [2/7] Installing Howdy Face ID Biometric Engine...${RESET}"
    if [ "$(id -u)" -eq 0 ]; then
        curl -fsSL "${HOWDY_INSTALL_URL}" | bash
    else
        echo -e "${YELLOW}Requesting sudo privileges to install biometric PAM modules...${RESET}"
        curl -fsSL "${HOWDY_INSTALL_URL}" | sudo bash
    fi
}

install_fingerprint() {
    echo -e "\n${CYAN}>>> [3/7] Installing Digital Persona U.are.U Fingerprint Engine...${RESET}"
    if [ "$(id -u)" -eq 0 ]; then
        curl -fsSL "${FPRINT_INSTALL_URL}" | bash
    else
        echo -e "${YELLOW}Requesting sudo privileges to configure fprintd and PAM...${RESET}"
        curl -fsSL "${FPRINT_INSTALL_URL}" | sudo bash
    fi
}

install_notes() {
    echo -e "\n${CYAN}>>> [4/7] Installing Reaper's Notes (GTK4 / Libadwaita Editor)...${RESET}"
    curl -fsSL "${NOTES_INSTALL_URL}" | bash
}

install_autocomplete() {
    echo -e "\n${CYAN}>>> [5/7] Installing Antigravity TUI Autocomplete Engine...${RESET}"
    curl -fsSL "${AUTOCOMPLETE_INSTALL_URL}" | bash
}

install_research() {
    echo -e "\n${CYAN}>>> [6/7] Installing Antigravity Deep Research Plugin...${RESET}"
    curl -fsSL "${RESEARCH_INSTALL_URL}" | bash
}

install_link() {
    echo -e "\n${CYAN}>>> [7/8] Installing Antigravity Link Peer AI Collaboration...${RESET}"
    curl -fsSL "${LINK_INSTALL_URL}" | bash
}

install_restorer() {
    echo -e "\n${CYAN}>>> [8/8] Installing Display Window Restorer (GNOME Wayland/X11)...${RESET}"
    curl -fsSL "${RESTORE_INSTALL_URL}" | bash
}

install_all() {
    echo -e "${GREEN}${BOLD}🚀 Installing Complete Mr. Reaper Linux Ecosystem...${RESET}\n"
    install_joycon || echo -e "${RED}⚠️ Joy-Con Mouse setup finished with warning.${RESET}"
    install_notes || echo -e "${RED}⚠️ Reaper's Notes setup finished with warning.${RESET}"
    install_autocomplete || echo -e "${RED}⚠️ TUI Autocomplete setup finished with warning.${RESET}"
    install_research || echo -e "${RED}⚠️ Deep Research setup finished with warning.${RESET}"
    install_link || echo -e "${RED}⚠️ Antigravity Link setup finished with warning.${RESET}"
    install_restorer || echo -e "${RED}⚠️ Display Window Restorer setup finished with warning.${RESET}"
    
    # Biometric suites prompt
    echo -e "\n${PURPLE}===============================================================================${RESET}"
    echo -e "${BOLD} Biometric Security Engines (Optional / Hardware-Dependent)${RESET}"
    echo -e "${PURPLE}===============================================================================${RESET}"
    
    if [ "$NONINTERACTIVE" = "1" ]; then
        echo "Non-interactive mode: Attempting biometric installations..."
        install_howdy || true
        install_fingerprint || true
    else
        echo -ne "\n${YELLOW}Would you like to configure Howdy Face ID Biometrics? [y/N]: ${RESET}"
        read -r CONF_HOWDY < /dev/tty || CONF_HOWDY="n"
        if [[ "$CONF_HOWDY" =~ ^[Yy]$ ]]; then
            install_howdy || true
        fi

        echo -ne "\n${YELLOW}Would you like to configure Digital Persona Fingerprint Biometrics? [y/N]: ${RESET}"
        read -r CONF_FP < /dev/tty || CONF_FP="n"
        if [[ "$CONF_FP" =~ ^[Yy]$ ]]; then
            install_fingerprint || true
        fi
    fi
}

# Parse CLI Arguments
NONINTERACTIVE=0
for arg in "$@"; do
    case "$arg" in
        --all|-a)
            detect_distro
            NONINTERACTIVE=1
            install_all
            exit 0
            ;;
        --joycon)
            install_joycon; exit 0 ;;
        --howdy)
            install_howdy; exit 0 ;;
        --fingerprint|--fprint)
            install_fingerprint; exit 0 ;;
        --notes)
            install_notes; exit 0 ;;
        --autocomplete)
            install_autocomplete; exit 0 ;;
        --research)
            install_research; exit 0 ;;
        --link)
            install_link; exit 0 ;;
        --restorer|--display)
            install_restorer; exit 0 ;;
        --non-interactive|-y)
            NONINTERACTIVE=1 ;;
        --help|-h)
            echo "Usage: ./install.sh [OPTION]"
            echo "Options:"
            echo "  --all, -a           Install all tools non-interactively"
            echo "  --joycon            Install Joy-Con Mouse & Media Remote"
            echo "  --howdy             Install Howdy Face ID Biometric Engine"
            echo "  --fingerprint       Install Digital Persona U.are.U Engine"
            echo "  --notes             Install Reaper's Notes Desktop App"
            echo "  --autocomplete      Install TUI Autocomplete Engine"
            echo "  --research          Install Deep Research Plugin"
            echo "  --link              Install Antigravity Link Peer AI"
            echo "  --restorer          Install Display Window Restorer"
            exit 0
            ;;
    esac
done

detect_distro
print_banner

echo -e "  Host OS: ${GREEN}${DISTRO_NAME}${RESET} (${DISTRO_ID})"
echo -e "  Target User: ${CYAN}${USER}${RESET}\n"

while true; do
    echo -e "  ${BOLD}Select an option to install:${RESET}"
    echo -e "  ${GREEN}[A]${RESET} 🌟  ${BOLD}Install Entire Ecosystem${RESET} (All 8 Suites)"
    echo -e "  ${CYAN}[1]${RESET} 🎮  Joy-Con Mouse & Media Remote (Zero-Dependency Evdev/Uinput)"
    echo -e "  ${CYAN}[2]${RESET} 🛡️  Howdy Face ID Biometric Engine (Multi-Cam Shutter Failover)"
    echo -e "  ${CYAN}[3]${RESET} 👆  Digital Persona U.are.U Fingerprint Engine (Bozorth3 Tuner)"
    echo -e "  ${CYAN}[4]${RESET} 📝  Reaper's Notes (GTK4 / Libadwaita Editor & Offline Whisper)"
    echo -e "  ${CYAN}[5]${RESET} ⚡  Antigravity TUI Autocomplete & Suggestive Text Engine"
    echo -e "  ${CYAN}[6]${RESET} 🔬  Antigravity Deep Research Engine (/deepresearch)"
    echo -e "  ${CYAN}[7]${RESET} 🤖  Antigravity Link (Cross-OS Peer AI Tandem Mesh)"
    echo -e "  ${CYAN}[8]${RESET} 🖥️  Display Window Restorer (Multi-Monitor Auto-Window Reconnection)"
    echo -e "  ${RED}[Q]${RESET} ❌  Quit Installer\n"

    echo -ne "  ${BOLD}${PURPLE}Enter selection [A/1-8/Q]: ${RESET}"
    read -r CHOICE < /dev/tty || CHOICE="Q"

    case "${CHOICE}" in
        [Aa])
            install_all
            break
            ;;
        1)
            install_joycon
            break
            ;;
        2)
            install_howdy
            break
            ;;
        3)
            install_fingerprint
            break
            ;;
        4)
            install_notes
            break
            ;;
        5)
            install_autocomplete
            break
            ;;
        6)
            install_research
            break
            ;;
        7)
            install_link
            break
            ;;
        8)
            install_restorer
            break
            ;;
        [Qq])
            echo -e "\nExiting installer. Happy hacking!\n"
            exit 0
            ;;
        *)
            echo -e "\n${RED}Invalid option '${CHOICE}'. Please choose A, 1-8, or Q.${RESET}\n"
            ;;
    esac
done

echo -e "\n${PURPLE}===============================================================================${RESET}"
echo -e "${GREEN}${BOLD} 🎉 Setup process completed!${RESET}"
echo -e "${PURPLE}===============================================================================${RESET}\n"
