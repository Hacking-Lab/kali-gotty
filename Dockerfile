FROM kalilinux/kali-rolling

LABEL MAINTAINER "Ivan Buetler <ivan.buetler@hacking-lab.com>"

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get dist-upgrade -yq && \
    apt-get install -y amass bash python2  python3 bind9-dnsutils coreutils curl exploitdb findutils gobuster hashid \
        john proxychains jq ftp ldnsutils ngrep nmap metasploit-framework openssh-client openssl \
        smbclient smbmap sublist3r swaks tcpdump tshark nano vim wget whois iproute2 netcat-openbsd net-tools \
        ncat iputils-ping

ENV GOTTY_VERSION=2.0.0-alpha.3
RUN cd /tmp/ && \
    wget https://github.com/yudai/gotty/releases/download/v${GOTTY_VERSION}/gotty_${GOTTY_VERSION}_linux_amd64.tar.gz -O gotty.tar.gz && \
    tar xf gotty.tar.gz && mv gotty /usr/local/bin/ && rm gotty.tar.gz

ADD root/ /

RUN  sed -e "s/DATE/$(date)/g" -i /etc/motd

ENV TERM=xterm

EXPOSE 8080
ENTRYPOINT ["/entrypoint.sh"]
