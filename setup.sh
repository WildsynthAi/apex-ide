#!/bin/bash
echo "🚀 Starting Apex IDE Universal Setup..."
pkg update && pkg upgrade -y
pkg install glibc-repo ollama gh git -y
pkg install python-glibc libsqlite-glibc -y
/data/data/com.termux/files/usr/glibc/bin/python3 -m ensurepip --upgrade
/data/data/com.termux/files/usr/glibc/bin/python3 -m pip install aider-chat
echo "------------------------------------------------"
echo "✅ Environment Ready!"
echo "Next steps for the user:"
echo "1. Run: ollama pull gemma4:e4b"
echo "2. Add the alias from README.md to your ~/.bashrc"
echo "------------------------------------------------"
