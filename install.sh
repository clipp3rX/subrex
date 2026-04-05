#!/bin/bash

set -e

echo "[+] Installing SUBREX..."

# run requirements
bash requirements.sh

# make executable
chmod +x subrex

# move to global path
sudo cp subrex /usr/local/bin/subrex

echo "[+] Installation complete"
echo "[+] Run: subrex -d example.com"