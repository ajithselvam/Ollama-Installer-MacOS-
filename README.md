# Ollama-Installer-MacOS-
Ollama Installer MacOS 

#  Ollama Installer Script for macOS

This repository contains a **Bash script** to automatically **download, install, and run Ollama** on macOS.  
It simplifies the process of setting up [Ollama](https://ollama.com) by handling download, extraction, and background execution.

---

## 📋 Features
- Downloads the latest **Ollama macOS release (darwin.zip)**.
- Extracts and installs Ollama into the `/Applications` directory.
- Runs Ollama models (default: `llama3.2`) in the background without UI.
- Automatically kills background processes after a test run.

---

## 🛠️ Requirements
- macOS (Intel or Apple Silicon)
- `curl` and `unzip` installed (pre-installed on macOS)
- Internet connection

---

## 📦 Installation & Usage

1. Clone this repository:
   ```bash
   git clone https://github.com/ajithselvam/ollama-macos-installer.git
   cd ollama-macos-installer


2. Make the script executable:
   chmod +x ollama.sh

3. Run the script:
   ./ollama.sh

4. The script will:

Download Ollama-darwin.zip into ~/Downloads

Extract Ollama into /Applications/Ollama

Run ollama run llama3.2 in the background

Kill Ollama processes after testing


📜 License

This project is licensed under the MIT License – feel free to use and modify it.
