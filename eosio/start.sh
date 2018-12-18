#!/bin/bash

set -x

set -e

mode=run
data_dir=/root/data
config_dir=/root/config
mongo_url=mongo://root:example@127.0.0.1:27017/EOS

if [ -n "$MODE" ]; then
  mode=$MODE
fi

if [ -n "$DATA_DIR" ]; then
  data_dir=$DATA_DIR
fi

if [ -n "$CONFIG_DIR" ]; then
  config_dir=$CONFIG_DIR
fi

if [ -n "$MONGO_URL" ]; then
  mongo_url=$MONGO_URL
fi

echo 'MODE:'$mode
echo 'DATA_DIR:'$data_dir
echo 'CONFIG_DIR:'$config_dir
echo 'MONGO_URL:'$mongo_url

if [ "init" == "$mode" ]; then
  /usr/bin/nodeos \
  --genesis-json=$config_dir/genesis.json \
    --data-dir=$data_dir \
    --config-dir=$config_dir \
    --delete-all-blocks \
    --mongodb-wipe \
    --mongodb-uri=$mongo_url
elif [ "replay" == "$mode" ]; then
  /usr/bin/nodeos \
  --genesis-json=$config_dir/genesis.json \
    --data-dir=$data_dir \
    --config-dir=$config_dir \
    --replay-blockchain \
    --hard-replay-blockchain \
    --mongodb-uri=$mongo_url
elif [ "run" == "$mode" ]; then
  /usr/bin/nodeos \
  --genesis-json=$config_dir/genesis.json \
    --data-dir=$data_dir \
    --config-dir=$config_dir \
    --mongodb-uri=$mongo_url
fi
