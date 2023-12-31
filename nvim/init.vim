" call plug#begin('~/AppData/Local/nvim-data/site/autoload/plug')

" Plug 'ms-jpq/coq_nvim' 
" Plug 'nvim-treesitter/nvim-treesitter'

"  Uncomment these if you want to manage LSP servers from neovim
" Plug 'williamboman/mason.nvim'
" Plug 'williamboman/mason-lspconfig.nvim'

" LSP Support
" Plug 'neovim/nvim-lspconfig'
" Autocompletion
" Plug 'hrsh7th/nvim-cmp'
" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'L3MON4D3/LuaSnip'

" Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}

" call plug#end()

set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set hidden
set inccommand=split
set mouse=a
set number
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu

syntax on

" colorscheme eldar

" let g:eldar_term_text        = "White"
" let g:eldar_term_background  = "Black"

set t_Co=256

lua require('config')
lua require('remap')

" vimtex config


