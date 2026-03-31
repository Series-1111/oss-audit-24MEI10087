#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Shrinkhla

PACKAGE="git"

echo "Checking package: $PACKAGE"
echo "--------------------------------------"

# Check if package is installed
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."
    echo ""

    # Show details
    apt show $PACKAGE 2>/dev/null | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo "--------------------------------------"

# Case statement (philosophy lines)
case $PACKAGE in
    git)
        echo "Git: the backbone of modern collaborative development"
        ;;
    apache2)
        echo "Apache: the web server that built the open internet"
        ;;
    mysql-server)
        echo "MySQL: open source at the heart of millions of applications"
        ;;
    vlc)
        echo "VLC: a powerful media player built for openness and flexibility"
        ;;
    *)
        echo "Unknown package"
        ;;
esac
