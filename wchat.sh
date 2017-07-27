#!/bin/bash
client.py <host> <password> &
ssh <host> -t 'tmux a -d'
trap 'kill $(jobs -p)' EXIT
