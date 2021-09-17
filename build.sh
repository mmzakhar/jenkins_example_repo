#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
#apt-get update
apt-get install -y wget build-essential pkg-config cmake ca-certificates gnupg git

COMPONENTS="intel-oneapi-compiler-dpcpp-cpp"
apt-get install -y $COMPONENTS

icpc hello.cpp
