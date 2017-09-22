FROM atlassian/default-image:latest

RUN apt-get update && \
    DEBIAN_FRONTEND="noninteractive" \
    apt-get install -y --no-install-recommends \
    chromium \
    libgconf-2-4

ENV CHROME_BIN /usr/bin/chromium
