#!/bin/bash

apt update
apt install -y python3
apt install -y python3-pip
apt install -y python-is-python3

# python3 -m pip install -r requirements.txt

apt install -y ca-certificates
apt install -y build-essential
apt install -y git
wget https://go.dev/dl/go1.21.6.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.21.6.linux-amd64.tar.gz && rm go1.21.6.linux-amd64.tar.gz
export GOROOT=/usr/local/go
export GOPATH=/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export GO111MODULE=on
export CGO_ENABLED=1
mkdir -p /go/src
mkdir -p /go/bin
cd /tmp && git clone --depth 1 https://github.com/projectdiscovery/httpx.git
cd /tmp/httpx && go mod download
cd /tmp/httpx && go install ./cmd/httpx