#!/bin/bash

# 设置错误时退出
set -e

# 颜色定义
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 检查是否在正确的目录
if [ ! -d ~/dotfiles ]; then
    echo -e "${YELLOW}错误：找不到 ~/dotfiles 目录${NC}"
    exit 1
fi

cd ~/dotfiles

# 显示当前 git 状态
echo -e "${GREEN}=== 当前修改状态 ===${NC}"
git status

# 检查是否有修改
if git diff-index --quiet HEAD --; then
    echo -e "${YELLOW}没有检测到任何修改${NC}"
    exit 0
fi

# 询问是否提交
read -p "是否提交这些更改？(y/n) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${YELLOW}操作已取消${NC}"
    exit 0
fi

# 添加所有更改
git add .

# 获取提交信息
echo -e "${GREEN}请输入提交信息：${NC}"
read -r commit_msg

# 如果提交信息为空，使用默认信息
if [ -z "$commit_msg" ]; then
    commit_msg="更新配置文件 $(date '+%Y-%m-%d %H:%M:%S')"
fi

# 提交更改
git commit -m "$commit_msg"

# 推送到远程仓库
echo -e "${GREEN}正在推送到 GitHub...${NC}"
git push

echo -e "${GREEN}完成！${NC}"
