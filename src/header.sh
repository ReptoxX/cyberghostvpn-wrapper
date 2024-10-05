#!/usr/bin/env bash
# This wrapper is meant for an easier use of CyberghostVPN
# It is not meant to be used as a standalone script

if [[ "${BASH_VERSINFO:-0}" -lt 4 ]]; then
    printf "bash version 4 or higher is required\n" >&2
    exit 1
fi

# Enforce Root, because cyberghost-vpn requires root
if [[ $EUID -ne 0 ]]; then
    exec sudo "$0" "$@"
fi
