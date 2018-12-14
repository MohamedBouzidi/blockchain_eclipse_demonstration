geth --datadir /geth_node/datadir --rpc --rpccorsdomain "*" --rpcvhosts "*" --ethstats="$HOSTNAME:secret@backend:3000" console 2> /geth_node/log
