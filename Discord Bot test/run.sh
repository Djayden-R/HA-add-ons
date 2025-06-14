#!/usr/bin/env bash

# Haal de token uit options.json
DISCORD_TOKEN=$(jq -r '.discord_token' /data/options.json)

# Zet 'm als env var en start de bot
export DISCORD_TOKEN
python3 /bot.py
