#!/bin/bash

set -e

echo "[+] Installing dependencies..."

# =========================
# SYSTEM PACKAGES
# =========================

sudo apt update
sudo apt install -y \
    git curl jq whois python3 python3-pip build-essential

# =========================
# INSTALL GOLANG (IF NOT)
# =========================

if ! command -v go >/dev/null 2>&1; then
    echo "[+] Installing Go..."
    sudo apt install -y golang
fi

export PATH=$PATH:$(go env GOPATH)/bin

# =========================
# GO TOOLS
# =========================

echo "[+] Installing Go tools..."

go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install github.com/projectdiscovery/httpx/cmd/httpx@latest
go install github.com/projectdiscovery/dnsx/cmd/dnsx@latest
go install github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest
go install github.com/tomnomnom/assetfinder@latest
go install github.com/owasp-amass/amass/v4/...@master

# =========================
# PYTHON TOOLS
# =========================

echo "[+] Installing Python tools..."

pip3 install --upgrade pip
pip3 install puredns altdns sublist3r

# =========================
# WORDLISTS (SECLISTS)
# =========================

if [[ ! -d "/usr/share/seclists" ]]; then
    echo "[+] Installing SecLists..."
    sudo apt install -y seclists
fi

echo "[+] All tools installed successfully"