#!/usr/bin/env bash
ping -c 4 "$(ip -4 -brief address show scope host | head -n 1 | while read -r interface state address rest; do printf '%s\n' "${address%/*}"; done)"
