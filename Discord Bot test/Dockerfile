ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base-python:3.11
FROM ${BUILD_FROM}

# Update pip
RUN pip3 install --no-cache-dir --upgrade pip

# Installeer py-cord (Discord bot library)
RUN pip3 install py-cord

# Installeer jq om JSON te kunnen parsen vanuit /data/options.json
RUN apk add --no-cache jq

# Kopieer de bot scripts
COPY run.sh /
COPY bot.py /

# Zorg dat run.sh uitvoerbaar is
RUN chmod a+x /run.sh

# Startscript
CMD [ "/run.sh" ]
