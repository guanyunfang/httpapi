#!/bin/bash
# 获取 httpapi 进程的 PID
PID=$(pgrep -f httpapi)
# 如果找到了 PID，则终止进程
if [ -n "$PID" ]; then
    kill $PID
    if [ $? -eq 0 ]; then
        echo "httpapi process with PID $PID terminated successfully."
    else
        echo "Failed to terminate httpapi process with PID $PID."
        exit 1
    fi
else
    echo "No httpapi process found."
fi
