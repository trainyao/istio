from istio/proxyv2:1.4.6-base

COPY sources.list /etc/apt/sources.list
RUN apt update 
RUN apt install dnsutils curl netcat wget -y

COPY pilot-agent /usr/local/bin/pilot-agent
RUN mkdir -p /etc/istio/logs

