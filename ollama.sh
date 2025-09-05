#!/bin/bash

loggedInUser=$(stat -f%Su /dev/console)

LINK="https://ollama.com/download/Ollama-darwin.zip"
DOWNLOAD_PATH="$HOME/Downloads/Ollama-darwin.zip"
APPLICATIONS_PATH="/Applications/Ollama"


echo "Downloading Ollama..."
curl -L -o "$DOWNLOAD_PATH" "$LINK"


if [[ $? -ne 0 ]]; then
    echo "Download failed!"
    exit 1
fi


if [[ ! -d "$APPLICATIONS_PATH" ]]; then
    echo "Creating Applications directory..."
    mkdir -p "$APPLICATIONS_PATH"
fi


echo "Extracting Ollama..."
unzip -o "$DOWNLOAD_PATH" -d "$APPLICATIONS_PATH"


if [[ $? -ne 0 ]]; then
    echo "Extraction failed!"
    exit 1
fi

#to run the command without UI

ollama run llama3.2 >/dev/null 2>&1 &

sleep 2
pkill -f Ollama
pkill -f ollama

