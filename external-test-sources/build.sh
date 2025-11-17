#! /bin/bash

daml clean --all

echo "1/6 Building splice-token-test-trading-app"
cd ./splice-token-test-trading-app && daml clean && daml build && cd ..
sleep 10

echo "2/6 Building splice-token-standard-test"
cd ./splice-token-standard-test && daml clean && daml build && cd ..
sleep 10

echo "3/6 Building splice-amulet-test"
cd ./splice-amulet-test && daml clean && daml build && cd ..
sleep 10

echo "4/6 Building splice-wallet-test"
cd ./splice-wallet-test && daml clean && daml build && cd ..

echo "5/6 Building splice-amulet-name-service-test"
cd ./splice-amulet-name-service-test && daml clean && daml build && cd ..
sleep 10

echo "6/6 Building splice-dso-governance-test"
cd ./splice-dso-governance-test && daml clean && daml build && cd ..
sleep 10