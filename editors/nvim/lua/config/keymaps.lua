local map = vim.keymap.set

-- 设置 leader 键为空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 通用键位设置
-- 退出插入模式
map("i", "jk", "<ESC>", { desc = "退出插入模式" })

-- 窗口导航
map("n", "<C-h>", "<C-w>h", { desc = "移动到左窗口" })
map("n", "<C-j>", "<C-w>j", { desc = "移动到下窗口" })
map("n", "<C-k>", "<C-w>k", { desc = "移动到上窗口" })
map("n", "<C-l>", "<C-w>l", { desc = "移动到右窗口" })

-- 调整窗口大小
map("n", "<C-Up>", ":resize -2<CR>", { desc = "减小窗口高度" })
map("n", "<C-Down>", ":resize +2<CR>", { desc = "增加窗口高度" })
map("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "减小窗口宽度" })
map("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "增加窗口宽度" })

-- 缓冲区导航
map("n", "<S-h>", ":bprevious<CR>", { desc = "上一个缓冲区" })
map("n", "<S-l>", ":bnext<CR>", { desc = "下一个缓冲区" })

-- 文本操作
map("v", "<", "<gv", { desc = "减少缩进并保持选择" })
map("v", ">", ">gv", { desc = "增加缩进并保持选择" })
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "向下移动选中文本" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "向上移动选中文本" })

-- 搜索
map("n", "<leader>h", ":nohlsearch<CR>", { desc = "清除搜索高亮" })

-- 分屏
map("n", "<leader>sv", ":vsplit<CR>", { desc = "垂直分屏" })
map("n", "<leader>sh", ":split<CR>", { desc = "水平分屏" })

-- 保存和退出
map("n", "<leader>w", ":w<CR>", { desc = "保存文件" })
map("n", "<leader>q", ":q<CR>", { desc = "退出" })
map("n", "<leader>Q", ":qa!<CR>", { desc = "强制退出所有" })

-- 移动优化
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, desc = "更好的向下移动" })
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, desc = "更好的向上移动" })

-- 居中显示搜索结果
map("n", "n", "nzzzv", { desc = "下一个搜索结果并居中" })
map("n", "N", "Nzzzv", { desc = "上一个搜索结果并居中" })

-- 快速移动到行首行尾
map("n", "H", "^", { desc = "移动到行首" })
map("n", "L", "$", { desc = "移动到行尾" })

-- 终端相关
map("t", "<Esc>", "<C-\\><C-n>", { desc = "退出终端模式" })
map("t", "<C-h>", "<C-\\><C-n><C-w>h", { desc = "终端模式移动到左窗口" })
map("t", "<C-j>", "<C-\\><C-n><C-w>j", { desc = "终端模式移动到下窗口" })
map("t", "<C-k>", "<C-\\><C-n><C-w>k", { desc = "终端模式移动到上窗口" })
map("t", "<C-l>", "<C-\\><C-n><C-w>l", { desc = "终端模式移动到右窗口" }) 