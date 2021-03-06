#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y wget build-essential pkg-config cmake ca-certificates gnupg git

wget https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2023.PUB
apt-key add GPG-PUB-KEY-INTEL-SW-PRODUCTS-2023.PUB
echo "deb https://apt.repos.intel.com/oneapi all main" | tee /etc/apt/sources.list.d/oneAPI.list
apt-get update -o Dir::Etc::sourcelist="sources.list.d/oneAPI.list" -o APT::Get::List-Cleanup="0"

COMPONENTS="intel-oneapi-compiler-dpcpp-cpp"
apt-get install -y $COMPONENTS

icpc hello.cpp
