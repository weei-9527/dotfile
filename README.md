# My Dotfiles

这是我的个人 dotfiles 配置文件仓库，包含了我的 Linux 系统配置文件。

## 包含的配置

- **WezTerm** (.config/wezterm) - 终端模拟器配置
- **Waybar** (.config/waybar) - 状态栏配置
- **Wofi** (.config/wofi) - 应用启动器配置
- **Mako** (.config/mako) - 通知管理器配置
- **Fcitx5** (.config/fcitx5) - 输入法配置
- **GTK** (.config/gtk-3.0) - GTK 主题配置
- **Fontconfig** (.config/fontconfig) - 字体配置
- **Kitty** (.config/kitty) - 终端模拟器配置

## 安装

1. 克隆仓库到本地：
   ```bash
   git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dotfiles
   ```

2. 创建符号链接（建议先备份原有配置）：
   ```bash
   ln -s ~/dotfiles/.config/* ~/.config/
   ```

## 更新

使用 `update.sh` 脚本来更新和推送修改：
```bash
./update.sh
```

## 系统信息

- **操作系统**: Arch Linux
- **Shell**: Fish
