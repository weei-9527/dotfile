# My Dotfiles

这是我的个人 dotfiles 配置文件仓库，包含了我的 Linux 系统配置文件。主要用于快速配置和同步我的开发环境。

## 系统环境

- **操作系统**: Arch Linux
- **Shell**: Fish Shell
- **桌面环境**: Hyprland

## 目录结构

```
.
├── wm/                # 窗口管理器相关配置
│   ├── hypr/         # Hyprland 配置
│   ├── waybar/       # 状态栏
│   ├── wofi/         # 应用启动器
│   ├── uwsm/         # 窗口管理器
│   └── mako/         # 通知管理器
├── terminals/         # 终端模拟器配置
│   ├── wezterm/      # WezTerm 配置
│   └── kitty/        # Kitty 配置
├── shells/           # Shell 配置
│   └── fish/         # Fish Shell 配置
├── editors/          # 编辑器配置
│   └── nvim/         # Neovim 配置
├── xdg-config/       # XDG 配置
│   ├── fontconfig/   # 字体配置
│   ├── gtk-3.0/      # GTK 主题配置
│   ├── mimeapps.list # 默认应用关联
│   ├── pavucontrol.ini # 音频控制配置
│   └── user-dirs.*   # 用户目录配置
├── system-tools/     # 系统工具配置
│   ├── autostart/    # 自启动配置
│   ├── fcitx5/       # 输入法配置
│   ├── systemd/      # 系统服务配置
│   └── yay/          # AUR 助手配置
├── dev-tools/        # 开发工具配置
│   └── go/           # Go 语言配置
├── install.sh        # 安装脚本
└── update.sh         # 更新脚本
```

## 配置说明

### 窗口管理

- **Hyprland** - Wayland 混成器和窗口管理器
- **Waybar** - Wayland 环境下的状态栏
- **Wofi** - Wayland 原生的应用启动器
- **Mako** - Wayland 通知管理器

### 终端和 Shell

- **WezTerm** - 现代化的跨平台终端模拟器
- **Kitty** - 高性能终端模拟器
- **Fish** - 友好交互的 shell

### 系统工具

- **输入法** - Fcitx5 输入法框架
- **自启动** - 系统自启动服务配置
- **系统服务** - Systemd 用户服务配置
- **包管理** - Yay (AUR 助手) 配置

### 开发工具

- **Neovim** - 现代化的终端编辑器
- **Go** - Go 语言开发环境配置

### 其他配置

- **字体** - Fontconfig 字体渲染配置
- **GTK** - GTK 主题和界面配置
- **默认应用** - XDG 默认应用配置
- **音频** - PulseAudio 音量控制配置

## 快速开始

### 安装

1. 克隆仓库到本地：
   ```bash
   git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dotfiles
   ```

2. 运行安装脚本（会自动备份已存在的配置）：
   ```bash
   cd ~/dotfiles
   ./install.sh
   ```

### 手动安装

如果你想手动安装，可以使用 stow 选择性地创建符号链接：
```bash
cd ~/dotfiles
# 示例：只安装 WezTerm 配置
stow -t ~/.config terminals

# 示例：只安装窗口管理器相关配置
stow -t ~/.config wm
```

## 配置更新

1. 使用更新脚本（推荐）：
   ```bash
   ./update.sh
   ```
   这将自动同步所有更改并推送到远程仓库。

2. 手动更新：
   ```bash
   # 拉取最新更改
   git pull origin main
   
   # 提交本地修改
   git add .
   git commit -m "更新配置"
   git push origin main
   ```

## 注意事项

- 使用前请先备份自己的配置文件
- 某些配置可能需要安装相应的软件包
- 配置文件已按功能模块化组织，可以选择性安装
- 使用 stow 管理符号链接，便于维护和更新

## 依赖

- git
- stow (用于管理符号链接)
- fish shell
- 各个配置对应的软件包

## 许可

MIT License
