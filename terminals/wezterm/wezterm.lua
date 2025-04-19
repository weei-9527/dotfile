-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- 配置配色方案
config.color_scheme = 'nord-light'

-- 配置字体
config.font = wezterm.font_with_fallback({
  'JetBrainsMono Nerd Font',
  'Noto Sans CJK SC'
})
config.font_size = 12.0
-- 字体渲染配置
config.freetype_load_target = 'Light'  -- 使用 Light 渲染以获得更清晰的显示
config.freetype_render_target = 'HorizontalLcd'  -- LCD 优化

-- 配置窗口
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.9
config.window_padding = {
  left = 5,
  right = 5,
  top = 5,
  bottom = 5,
}
-- 窗口装饰
config.window_decorations = "NONE"  -- 完全隐藏窗口装饰
config.window_close_confirmation = "AlwaysPrompt"  -- 关闭窗口时总是提示

-- 启用连字
config.harfbuzz_features = { 'calt=1', 'clig=1', 'liga=1' }

-- 光标配置
config.default_cursor_style = 'SteadyBar'
config.cursor_blink_rate = 500
config.force_reverse_video_cursor = true  -- 确保光标在所有颜色方案下都清晰可见

-- 按键绑定
config.keys = {
  -- 新建标签页
  {
    key = 't',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SpawnTab 'CurrentPaneDomain',
  },
  -- 关闭标签页
  {
    key = 'w',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.CloseCurrentTab { confirm = true },
  },
  -- 分割窗格
  {
    key = '\\',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = '-',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  -- 在窗格间导航
  {
    key = 'h',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Left',
  },
  {
    key = 'l',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Right',
  },
  {
    key = 'k',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Up',
  },
  {
    key = 'j',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Down',
  },
  -- 调整窗格大小
  {
    key = 'LeftArrow',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.AdjustPaneSize { 'Left', 5 },
  },
  {
    key = 'RightArrow',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.AdjustPaneSize { 'Right', 5 },
  },
  {
    key = 'UpArrow',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.AdjustPaneSize { 'Up', 5 },
  },
  {
    key = 'DownArrow',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.AdjustPaneSize { 'Down', 5 },
  },
  -- 切换全屏
  {
    key = 'f',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ToggleFullScreen,
  },
}

-- 启用滚动条
config.enable_scroll_bar = true
config.scrollback_lines = 10000

-- 启用 tab bar
config.use_fancy_tab_bar = true
config.tab_bar_at_bottom = true
config.tab_max_width = 32  -- 限制标签页最大宽度

-- 终端行为配置
config.scrollback_lines = 10000  -- 历史记录行数
config.enable_scroll_bar = true  -- 启用滚动条
config.exit_behavior = "Close"   -- 命令退出时关闭窗口
config.automatically_reload_config = true  -- 自动重新加载配置

-- 启用 CSI u 模式以获得更好的键盘兼容性
config.enable_csi_u_key_encoding = true

-- 设置默认程序
config.default_prog = { '/usr/bin/fish' }  -- 使用 fish shell 作为默认 shell

-- and finally, return the configuration to wezterm
return config
