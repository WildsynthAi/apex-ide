# 🚀 Apex Universe: Sovereign AI Workstation
This repository contains the configuration to run a professional, 100% local AI coding environment on **Android 16**.

## 🛠️ Requirements
- Termux
- Pixel 9 (Recommended for Gemma 4)
- 12GB+ RAM

## ⚡ Quick Setup
1. Install Glibc & Python 3.12: `pkg install glibc-repo && pkg install python-glibc libsqlite-glibc`
2. Install Ollama: `pkg install ollama`
3. Pull the Brain: `ollama pull gemma4:e4b`

## 🎮 The Ignition Key
Add this alias to your `~/.bashrc` to launch the IDE:
```bash
alias apex-ide='pkill ollama; ollama serve > /dev/null 2>&1 & cd ~/ai-ide && sleep 15 && export OPENAI_API_KEY=local && export LD_PRELOAD="" && /data/data/com.termux/files/usr/glibc/bin/python3 -m aider --openai-api-base http://127.0.0.1:11434/v1 --model ollama/gemma4:e4b --no-show-model-warnings'
```
