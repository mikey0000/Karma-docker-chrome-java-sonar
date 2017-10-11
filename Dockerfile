FROM atlassian/default-image:latest

RUN apt-get install apt-transport-https -y

RUN curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg && \
    mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg && \
    sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-trusty-prod trusty main" > /etc/apt/sources.list.d/dotnetdev.list'

RUN apt-get update && \
    DEBIAN_FRONTEND="noninteractive" \
    apt-get install -y --no-install-recommends \
    chromium-browser \
    libgconf-2-4
    
RUN DEBIAN_FRONTEND="noninteractive" \
    apt-get install -y \
    liblttng-ust0 \
    libstdc++6 \
    dotnet-hostfxr-1.1.0 \
    dotnet-sharedframework-microsoft.netcore.app-1.0.7 \
    dotnet-sharedframework-microsoft.netcore.app-1.1.4 \
    dotnet-dev-1.1.4
    
RUN wget -O azcopy.tar.gz https://aka.ms/downloadazcopyprlinux && \
    tar -xf azcopy.tar.gz && \
    ./install.sh
    
ENV CHROME_BIN /usr/bin/chromium-browser
