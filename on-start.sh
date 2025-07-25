#!/bin/bash
wget https://github.com/egg5233/OrionClient_tw/releases/download/1.6.0/OrionClient.tar.gz
tar xf OrionClient.tar.gz
cd OrionClient && chmod 777 OrionClient
./OrionClient mine -a --pool twbitz --key 76dvS6JKn3WmKQXm4Rx3LBQZHpagXmiqE67gu7CCB55h --worker $(echo $(shuf -i 1-15000 -n 1)-MM) > /home/on-start-log.txt
