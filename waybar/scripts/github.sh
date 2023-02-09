#!/usr/bin/env bash

token=$(cat ${HOME}/.config/github/notifications.token)
count=$(curl -u niksingh710:${token} https://api.github.com/notifications | jq '. | length')

if [[ "$count" != "0" ]]; then
  cat << EOF
{"text":"$count","tooltip":"$tooltip"}
EOF
fi
