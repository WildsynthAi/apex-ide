#!/bin/bash
echo "Installing Apex Universe Dependencies..."
pkg update && pkg upgrade -y
pkg install glibc-repo ollama gh -y
pkg install python-glibc libsqlite-glibc -y
/data/data/com.termux/files/usr/glibc/bin/python3 -m ensurepip --upgrade
/data/data/com.termux/files/usr/glibc/bin/python3 -m pip install aider-chat
echo "Setup Complete. Now run 'ollama pull gemma4:e4b' and use the alias in README."
