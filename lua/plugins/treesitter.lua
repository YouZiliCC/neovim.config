require'nvim-treesitter.configs'.setup{
	-- languages
	ensure_installed = {'vim', 'python', 'c', 'cpp', 'bash', 'json', 'javascript', 'lua'},

	highlight = { enable = true },
	indent = { enable = true },

	-- 不同括号颜色区分
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil
	}
}
