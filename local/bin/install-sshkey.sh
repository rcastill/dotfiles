#!/bin/bash

sshargs="$@"

if [[ -z "$sshargs" ]]; then
    >&2 echo "Usage: $0 sshargs"
    exit 1
fi

ssh "$@" "mkdir -p ~/.ssh; echo '# $(hostname)' >> ~/.ssh/authorized_keys; echo '$(cat ~/.ssh/id_rsa.pub)' >> ~/.ssh/authorized_keys"
