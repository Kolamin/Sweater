#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i  ~/.ssh/id_rsa \
  target/sweater-1.0-SNAPSHOT.jar \
  anton@192.168.0.101:/home/anton/

echo 'Restart server...'
scp -i  ~/.ssh/id_rsa anton@192.168.0.101 << EOF

pgrep java | xargs kill -9
nohup java -jar sweater-1.0-SNAPSHOT.jar > log.txt &

EOF

echo 'Bye'