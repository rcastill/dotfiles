#!/bin/bash

name='lid-state-watcher'

systemctl stop "$name"
systemctl disable "$name"

cp "$name.sh" /usr/local/bin
cp "$name.service" /etc/systemd/system
systemctl daemon-reload
systemctl start "$name"
systemctl enable "$name"