#!/bin/bash

# --- Color Definitions ---
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# --- Function to print styled messages ---
print_message() {
    COLOR=$1
    MESSAGE=$2
    echo -e "\n${COLOR}${MESSAGE}${NC}"
}

# --- Start of the script ---
clear
echo -e "${BLUE}==================================================${NC}"
echo -e "${GREEN}   Telegram Advanced Toolkit Auto-Installer v2.5  ${NC}"
echo -e "${BLUE}==================================================${NC}"

# --- Step 1: Install Dependencies ---
print_message $YELLOW "[*] Updating packages and installing dependencies (git, python)..."
pkg install git python -y

if [ $? -ne 0 ]; then
    print_message $RED "[!] Failed to install dependencies. Please check your internet connection and storage."
    exit 1
else
    print_message $GREEN "[+] Dependencies installed successfully!"
fi

# --- Step 2: Clone Repository ---
print_message $YELLOW "[*] Cloning the repository..."
# Remove existing directory to ensure a fresh clone
if [ -d "telegram" ]; then
    print_message $YELLOW "[!] Existing 'telegram' directory found. Removing it for a fresh installation."
    rm -rf telegram
fi

git clone https://github.com/jubairbro/telegram.git

if [ $? -ne 0 ]; then
    print_message $RED "[!] Failed to clone the repository. Please check the URL or your connection."
    exit 1
fi

cd telegram
if [ $? -ne 0 ]; then
    print_message $RED "[!] Failed to enter the 'telegram' directory."
    exit 1
fi
print_message $GREEN "[+] Repository cloned successfully."

# --- Step 3: Install Python Libraries ---
print_message $YELLOW "[*] Installing required Python libraries..."
if [ ! -f "requirements.txt" ]; then
    print_message $RED "[!] 'requirements.txt' not found in the repository."
    exit 1
fi

pip install -r requirements.txt

if [ $? -ne 0 ]; then
    print_message $RED "[!] Failed to install Python libraries. Please check 'requirements.txt'."
    exit 1
else
    print_message $GREEN "[+] Python libraries installed successfully!"
fi

# --- Step 4: Create Global Command ---
print_message $YELLOW "[*] Creating the global 'telegram' command..."
BIN_PATH="$HOME/../usr/bin"
# Ensure the run script is executable
if [ -f "run" ]; then
    chmod +x run
    cp run $BIN_PATH/telegram
    if [ $? -eq 0 ]; then
        print_message $GREEN "[+] 'telegram' command created successfully!"
    else
        print_message $RED "[!] Failed to create the global command. Please check permissions."
        exit 1
    fi
else
    print_message $RED "[!] 'run' script not found."
    exit 1
fi

# --- Final Success Message ---
echo -e "\n${GREEN}==================================================${NC}"
echo -e "${GREEN}✅  Installation Complete! You are all set.  ✅${NC}"
echo -e "${YELLOW}You can now run the tool from ANY directory by simply typing:${NC}"
echo -e "\n      ${BLUE}telegram${NC}\n"
echo -e "${GREEN}==================================================${NC}"

exit 0
