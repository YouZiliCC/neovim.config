-- 来自github/packer 自动安装packer

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- 自动更新
vim.cmd([[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins_setup.lua source <afile> | PackerSync
	augroup end
]])

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'folke/tokyonight.nvim' -- topic
	use {
		'nvim-lualine/lualine.nvim', -- 状态栏
		requires = {'kyazdani42/nvim-web-devicons', opt = true} -- icon
	}
	use {
		'nvim-tree/nvim-tree.lua', --directory tree
		requires = {
			'nvim-tree/nvim-web-devicons' -- icon
		}
	}
	use 'christoomey/vim-tmux-navigator' -- 用crtl+hjkl移动窗口与tree
	use 'nvim-treesitter/nvim-treesitter' -- syntax highlight
	use 'p00f/nvim-ts-rainbow' -- 配合treesitter 区分不同颜色括号
	use {
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
		'neovim/nvim-lspconfig'
	}
	use {'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'saadparwaiz1/cmp_luasnip',
        }
	}
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'rafamadriz/friendly-snippets'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
