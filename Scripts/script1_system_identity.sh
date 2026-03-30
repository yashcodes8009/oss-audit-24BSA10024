#!/bin/bash
# Script 1: System Identity Report
# Author: Yash Shah

STUDENT_NAME="Yash Shah"
SOFTWARE_CHOICE="Git"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE_TIME=$(date)
ARCH=$(uname -m)

# Safe distro check
if [ -f /etc/os-release ]; then
    DISTRO=$(grep '^PRETTY_NAME' /etc/os-release | cut -d= -f2 | tr -d '"')
else
    DISTRO="Unknown"
fi

# Git check
if command -v git >/dev/null 2>&1; then
    GIT_VERSION=$(git --version)
else
    GIT_VERSION="Git not installed"
fi

echo "========================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "========================================"
echo "Software Chosen : $SOFTWARE_CHOICE"
echo "Distribution    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "Architecture    : $ARCH"
echo "User            : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATE_TIME"
echo "Git Version     : $GIT_VERSION"
echo ""
echo "License Note    : Linux kernel is licensed under GPL v2"
echo "========================================"
echo "Report generated successfully."