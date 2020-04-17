#!/bin/bash

set -e

scp ./release.tar.gz $1:~/

ssh -T $1 <<SSHCMDS
    mkdir -p app  &&
    tar -C app -xzf release.tar.gz &&
    rm -rf release.tar.gz
SSHCMDS

