#!/bin/bash

# 创建或修改pip配置文件
mkdir -p ~/.pip
cat > ~/.pip/pip.conf <<EOF
[global]
index-url = https://mirrors.aliyun.com/pypi/simple/
trusted-host = mirrors.aliyun.com
EOF

# 为当前用户配置
echo "已为当前用户配置阿里云pip源: ~/.pip/pip.conf"

# 可选：为系统全局配置（需要sudo权限）
read -p "是否要为系统全局配置？(y/n) " choice
if [[ "$choice" =~ [yY] ]]; then
    sudo mkdir -p /etc/pip
    sudo tee /etc/pip.conf <<EOF
[global]
index-url = https://mirrors.aliyun.com/pypi/simple/
trusted-host = mirrors.aliyun.com
EOF
    echo "已为系统全局配置阿里云pip源: /etc/pip.conf"
fi

echo "阿里云pip源配置完成！"
