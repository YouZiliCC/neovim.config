-->>>主键<<<
vim.g.mapleader = " "

-- >>>INSERT<<<
vim.keymap.set("i", "jk", "<ESC>") -- jk退出插入模式

-- >>>VISUAL<<<
-- 移动某一块 j->UP k->DOWN 真好用
vim.keymap.set("v", "j", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "k", ":m '<-2<CR>gv=gv")
-- indent
vim.keymap.set("v", ",", "<")
vim.keymap.set("v", ".", ">")

-- >>>NORMAL<<<
-- 窗口
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口 主键+sv(split vertical)
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口 主键+sh(split horizontal)
-- 取消高亮nh(no highlight)
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")
-- 缩进快捷键调整
vim.keymap.set("n", ",,", "<<")
vim.keymap.set("n", "..", ">>")

-- >>>Plugins<<<
-- vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "tt", ":NvimTreeToggle<CR>") -- tt tree
