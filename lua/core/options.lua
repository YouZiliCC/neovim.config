-- 行号
vim.opt.relativenumber = true
vim.opt.number = true

-- 缩进(Manual/Automatic)
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
-- 空格转tab
vim.opt.expandtab = false
-- Automatic indent
vim.opt.autoindent = true

-- 防止包裹(turnon)
vim.opt.wrap = true

-- 光标行
vim.opt.cursorline = true

-- 启用鼠标(unknown)
-- vim.opt.mouse:append("a")
-- 系统剪切板(unknown)
-- vim.opt.clipboard:append("unnamedplus")

-- 分割窗口位置
vim.opt.splitright = true
vim.opt.splitbelow = true

-- 不区分大小写的搜索
vim.opt.ignorecase = true
-- 输入大写字母则进行区分大小写
vim.opt.smartcase = true

-- terminal真彩色支持
vim.opt.termguicolors = true
-- 控制标志列？？
vim.opt.signcolumn = "yes"

-- 主题
vim.cmd[[colorscheme tokyonight-moon]]
