#!/bin/bash
apt update
apt -y dist-upgrade
apt autoremove
apt clean
sleep 2
