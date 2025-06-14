#!/usr/bin/env bash

# Haal Discord-token uit de Home Assistant add-on config (/data/options.json)
DISCORD_TOKEN=$(jq -r '.discord_token' /data/options.json)

# Geef de token door als environment variable
export DISCORD_TOKEN

# Start de bot
python3 /bot.py
