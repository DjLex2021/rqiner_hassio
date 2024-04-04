#!/usr/bin/with-contenv bashio
 
echo "rqiner - Qubic.Solutions Miner"
echo "https://github.com/Qubic-Solutions/rqiner-builds  "
echo ""

WALLET=$(bashio::config 'wallet_id')
LABEL=$(bashio::config 'label')
THREADS=$(bashio::config 'threads')

echo "Wallet-Id is: " $WALLET
echo "Label is: " $LABEL

echo "Run rqiner with " $THREADS " threads . . ."
./rqiner -i $WALLET -l $LABEL -t $THREADS
