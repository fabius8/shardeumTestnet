#!/bin/bash

while true; do
    date '+%Y-%m-%d %H:%M:%S'
    echo "检查节点状态..."
    NODE_STATE=$(docker exec shardeum-dashboard /bin/bash -c "operator-cli status" | grep "state:" | awk '{print $2}')
    if [[ $NODE_STATE == "stopped" ]]; then
        echo "节点故障, 需要重启！"
        docker exec shardeum-dashboard /bin/bash -c "operator-cli start"
    else
        echo "节点正常."
    fi
    sleep 60
done