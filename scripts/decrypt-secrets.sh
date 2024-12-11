#!/usr/bin/env bash

# Decrypts sops secrets

sops_file="$(dirname "$(dirname "$0")")/secrets.yaml"
destination="./var/lib/secrets"
mkdir -p "$destination"

for name in ${SECRETS[@]}; do
    sops --extract "[\"$name\"]" --decrypt "$sops_file" > "$destination/$name"
    chmod 700 "$destination/$name"
done
