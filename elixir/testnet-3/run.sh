#!/bin/bash
PROJECT_NAME="Elixir"

echo ""
echo -e "\e[1m\e[32m###########################################################################################"
echo -e "\e[1m\e[32m### Start $PROJECT_NAME node ... \e[0m" && sleep 1
echo ""
docker run -d \
  --env-file $HOME/.elixir/validator.env \
  --platform linux/amd64 \
  --name elixir \
  --restart unless-stopped \
  -p 17690:17690 \
  elixirprotocol/validator:testnet
