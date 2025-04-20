#!/bin/bash

# 配置npm使用腾讯云镜像源
npm config set registry https://mirrors.cloud.tencent.com/npm/
npm config set disturl https://mirrors.cloud.tencent.com/nodejs-release/
npm config set cache ~/.npm
npm config set puppeteer_download_host https://mirrors.cloud.tencent.com/npm/

# 配置yarn(如果有安装)
if command -v yarn &> /dev/null; then
  yarn config set registry https://mirrors.cloud.tencent.com/npm/
  yarn config set disturl https://mirrors.cloud.tencent.com/nodejs-release/
fi

# 验证配置
echo "当前npm配置："
npm config list | grep registry
echo "当前yarn配置(如果存在)："
yarn config list 2>/dev/null | grep registry

echo -e "\n✅ 已成功配置腾讯云npm镜像源"
