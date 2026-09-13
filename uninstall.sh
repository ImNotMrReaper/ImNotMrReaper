#!/usr/bin/env bash
# ==============================================================================
# 💀 Mr. Reaper's Linux Ecosystem Master Uninstaller
# Remote 1-Liner:
#   curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/ImNotMrReaper/main/uninstall.sh | bash
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
RESET="\033[0m"

uninstall_joycon() {
    echo -e "\n${CYAN}>>> Uninstalling Joy-Con Mouse...${RESET}"
    curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/joycon-mouse/main/uninstall.sh | bash || true
}

uninstall_howdy() {
    echo -e "\n${CYAN}>>> Uninstalling Howdy Face ID Engine...${RESET}"
    if [ "$(id -u)" -eq 0 ]; then
        curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/howdy-face-id-linux/main/uninstall.sh | bash || true
    else
        curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/howdy-face-id-linux/main/uninstall.sh | sudo bash || true
    fi
}

uninstall_fingerprint() {
    echo -e "\n${CYAN}>>> Uninstalling Digital Persona Fingerprint Engine...${RESET}"
    if [ "$(id -u)" -eq 0 ]; then
        curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/digitalpersona-uareu-linux/main/uninstall.sh | bash || true
    else
        curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/digitalpersona-uareu-linux/main/uninstall.sh | sudo bash || true
    fi
}

uninstall_notes() {
    echo -e "\n${CYAN}>>> Uninstalling Reaper's Notes...${RESET}"
    curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/reapers-notes/main/uninstall.sh | bash || true
}

uninstall_autocomplete() {
    echo -e "\n${CYAN}>>> Uninstalling Antigravity TUI Autocomplete...${RESET}"
    curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/tui-autocomplete/main/uninstall.sh | bash || true
}

uninstall_research() {
    echo -e "\n${CYAN}>>> Uninstalling Deep Research Plugin...${RESET}"
    curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/deep-research/main/uninstall.sh | bash || true
}

uninstall_link() {
    echo -e "\n${CYAN}>>> Uninstalling Antigravity Link...${RESET}"
    curl -fsSL https://raw.githubusercontent.com/ImNotMrReaper/antigravity-link/main/uninstall.sh | bash || true
}

uninstall_all() {
    echo -e "${RED}${BOLD}🗑️  Uninstalling Complete Ecosystem...${RESET}\n"
    uninstall_joycon
    uninstall_howdy
    uninstall_fingerprint
    uninstall_notes
    uninstall_autocomplete
    uninstall_research
    uninstall_link
    echo -e "\n${GREEN}✓ Entire Mr. Reaper ecosystem successfully uninstalled.${RESET}\n"
}

# CLI Argument parsing
for arg in "$@"; do
    case "$arg" in
        --all|-a)
            uninstall_all; exit 0 ;;
        --joycon)
            uninstall_joycon; exit 0 ;;
        --howdy)
            uninstall_howdy; exit 0 ;;
        --fingerprint)
            uninstall_fingerprint; exit 0 ;;
        --notes)
            uninstall_notes; exit 0 ;;
        --autocomplete)
            uninstall_autocomplete; exit 0 ;;
        --research)
            uninstall_research; exit 0 ;;
        --link)
            uninstall_link; exit 0 ;;
        --help|-h)
            echo "Usage: ./uninstall.sh [OPTION]"
            echo "Options:"
            echo "  --all, -a           Uninstall all tools"
            echo "  --joycon            Uninstall Joy-Con Mouse"
            echo "  --howdy             Uninstall Howdy Face ID"
            echo "  --fingerprint       Uninstall Digital Persona Fingerprint"
            echo "  --notes             Uninstall Reaper's Notes"
            echo "  --autocomplete      Uninstall TUI Autocomplete"
            echo "  --research          Uninstall Deep Research Plugin"
            echo "  --link              Uninstall Antigravity Link"
            exit 0
            ;;
    esac
done

echo -e "\n${PURPLE}===============================================================================${RESET}"
echo -e "  ${BOLD}${RED}🗑️  MR. REAPER'S LINUX ECOSYSTEM UNINSTALLER${RESET}"
echo -e "${PURPLE}===============================================================================${RESET}\n"

echo -e "  ${BOLD}Select an option to uninstall:${RESET}"
echo -e "  ${RED}[A]${RESET} 🗑️  ${BOLD}Uninstall Entire Ecosystem${RESET} (All 7 Suites)"
echo -e "  ${CYAN}[1]${RESET} 🎮  Joy-Con Mouse & Media Remote"
echo -e "  ${CYAN}[2]${RESET} 🛡️  Howdy Face ID Biometric Engine"
echo -e "  ${CYAN}[3]${RESET} 👆  Digital Persona U.are.U Fingerprint Engine"
echo -e "  ${CYAN}[4]${RESET} 📝  Reaper's Notes"
echo -e "  ${CYAN}[5]${RESET} ⚡  Antigravity TUI Autocomplete"
echo -e "  ${CYAN}[6]${RESET} 🔬  Deep Research Plugin"
echo -e "  ${CYAN}[7]${RESET} 🤖  Antigravity Link"
echo -e "  ${GREEN}[Q]${RESET} ❌  Cancel / Quit\n"

echo -ne "  ${BOLD}${PURPLE}Enter selection [A/1-7/Q]: ${RESET}"
read -r CHOICE < /dev/tty || CHOICE="Q"

case "${CHOICE}" in
    [Aa]) uninstall_all ;;
    1) uninstall_joycon ;;
    2) uninstall_howdy ;;
    3) uninstall_fingerprint ;;
    4) uninstall_notes ;;
    5) uninstall_autocomplete ;;
    6) uninstall_research ;;
    7) uninstall_link ;;
    *) echo -e "\nUninstallation cancelled.\n" ;;
esac
