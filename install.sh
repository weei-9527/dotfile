#!/bin/bash

# 设置错误时退出
set -e

# 颜色定义
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# 检查是否在正确的目录
if [ ! -d ~/dotfiles ]; then
    echo -e "${RED}错误：找不到 ~/dotfiles 目录${NC}"
    exit 1
fi

echo -e "${GREEN}开始安装配置文件...${NC}"

# 创建必要的目录
mkdir -p ~/.config

# 配置文件目录列表
configs=(
    "wezterm"
    "waybar"
    "wofi"
    "mako"
    "fcitx5"
    "gtk-3.0"
    "fontconfig"
    "kitty"
    "yay"
    "autostart"
)

# 创建符号链接
for config in "${configs[@]}"; do
    if [ -d ~/.config/"$config" ]; then
        echo -e "${YELLOW}备份已存在的 $config 配置...${NC}"
        mv ~/.config/"$config" ~/.config/"$config".bak
    fi
    
    if [ -d ~/dotfiles/.config/"$config" ]; then
        echo -e "${GREEN}链接 $config 配置...${NC}"
        ln -sf ~/dotfiles/.config/"$config" ~/.config/
    fi
done

echo -e "${GREEN}配置文件安装完成！${NC}"
echo -e "${YELLOW}注意：如果有备份文件，它们将保存在 ~/.config/ 目录下，以 .bak 结尾${NC}" 