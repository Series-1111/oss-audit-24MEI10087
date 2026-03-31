#!/bin/bash
# Script 1: System Identity Report
# Author: Shrinkhla | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Shrinkhla"
SOFTWARE_CHOICE="Git"

# --- System Info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE_TIME=$(date)

# Get Linux Distribution Name
DISTRO=$(cat /etc/os-release | grep "PRETTY_NAME" | cut -d= -f2 | tr -d '"')

# --- Display ---
echo "==========================================="
echo "  Open Source Audit — $STUDENT_NAME"
echo "==========================================="
echo "Software Chosen : $SOFTWARE_CHOICE"
echo "-------------------------------------------"
echo "OS       : $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Home Dir : $HOME_DIR"
echo "Uptime   : $UPTIME"
echo "Date/Time: $DATE_TIME"
echo "-------------------------------------------"
echo "License  : Linux is distributed under the GNU General Public License (GPL)"
echo "==========================================="
