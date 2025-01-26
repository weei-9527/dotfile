#!/bin/bash

cd ~/dotfiles

echo "=== 当前修改状态 ==="
git status

read -p "是否提交这些更改？(y/n) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    exit 1
fi

git add .

echo "请输入提交信息："
read -r commit_msg

git commit -m "$commit_msg"

echo "正在推送到 GitHub..."
git push

echo "完成！"
