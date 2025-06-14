ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base-python:3.11
FROM ${BUILD_FROM}

# Zorg dat pip up-to-date is
RUN pip3 install --no-cache-dir --upgrade pip

# Installeer py-cord
RUN pip3 install py-cord

# Kopieer de bot scripts
COPY run.sh /
COPY bot.py /

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
