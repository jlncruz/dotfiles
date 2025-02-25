local fn = vim.fn
-- Automatically install packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	print("Installing packer close and reopen Neovim...")
end
-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
	augroup packer_user_config
	autocmd!
	autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]])
-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end
-- Have packer use a popup window
packer.init({
		display = {
			open_fn = function()
				return require('packer.util').float({ border = 'single' })
			end
		}
	}
	)
-- Install your plugins here
return packer.startup(function(use)
	-- My plugins here
	use 'wbthomason/packer.nvim' -- Have packer manage itself
	use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
	use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
	use "williamboman/mason.nvim"
	use {'vim-airline/vim-airline'}
	-- , commit = 'ff7352e4bff02eb600a136b6fd741404f3195371'}
	use "rust-lang/rust.vim"
	use "jiangmiao/auto-pairs"
	use { -- older version of vimtex to work with nvim 0.9.5
		'lervag/vimtex', tag = 'v2.15',
	}
	-- use "sheerun/vim-polyglot"
	use "agude/vim-eldar"
	--use "uiiaoo/java-syntax.vim"
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	--[[ use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	} ]]

	use({
			"cappyzawa/trim.nvim",
			config = function()
				require("trim").setup({})
			end
		})

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	-- java plugins
	use "mfussenegger/nvim-jdtls"
	--

	--use "ojroques/nvim-hardline"

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}
	}

	use "preservim/nerdcommenter"
	use {
		'nvim-treesitter/nvim-treesitter', tag = 'v0.9.3',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = false })
			ts_update()
		end,
	}
	-- Automatically set up your configuration after cloning packer.nvim
-- Put this at the end after all plugins
if PACKER_BOOTSTRAP then
	require('packer').sync()
end
end)
