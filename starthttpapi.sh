#!/bin/bash
# 设置可执行文件的路径
BINARY_PATH="/home/ec2-user/httpapi/bin"
# 启动 httpapi 并使其在后台运行
nohup $BINARY_PATH > httpapi.log 2>&1 &
# 打印启动结果
if [ $? -eq 0 ]; then
    echo "httpapi started successfully!"
    echo "Check httpapi.log for logs."
else
    echo "Failed to start httpapi."
    exit 1
fi
