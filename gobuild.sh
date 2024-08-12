#!/bin/bash
# 设置 Go 环境
export GO111MODULE=on
# 指定 Go 工作区（可选）
# export GOPATH=$HOME/go
# 进入项目目录
cd /home/ec2-user/httpapi
# 更新依赖（可选）
go mod tidy
# 清理之前的构建（可选）
go clean
# 构建项目
go build -o httpapi
# 打印构建结果
if [ $? -eq 0 ]; then
    echo "Build successful! The binary 'httpapi' has been created."
else
    echo "Build failed!"
    exit 1
fi
