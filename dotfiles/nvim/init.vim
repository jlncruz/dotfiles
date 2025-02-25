" call plug#begin('~/appdata/local/nvim-data/site/autoload/plug')

" plug 'ms-jpq/coq_nvim'
" plug 'nvim-treesitter/nvim-treesitter'

"  uncomment these if you want to manage lsp servers from neovim
" plug 'williamboman/mason.nvim'
" plug 'williamboman/mason-lspconfig.nvim'

" lsp support
" plug 'neovim/nvim-lspconfig'
" autocompletion
" plug 'hrsh7th/nvim-cmp'
" plug 'hrsh7th/cmp-nvim-lsp'
" plug 'l3mon4d3/luasnip'

" plug 'vonheikemen/lsp-zero.nvim', {'branch': 'v3.x'}

" call plug#end()

" GENERAL SETTINGS -------------------
set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set hidden
set inccommand=split
set mouse=a
""set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu
syntax on
set t_co=256
" ------------------------------------

" colorscheme eldar

" let g:eldar_term_text        = "white"
" let g:eldar_term_background  = "black"

" require vim to read my lua config files on startup
lua require('config')
lua require('remap')

set tabstop=8
set shiftwidth=8

nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

" Removes gray bar next to the line numbers
:set signcolumn=no

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" fix vim airline bugged out screen, duplicated lines, duplicate mode line
" (EDIT: DOESNT WORK)
" :autocmd BufWritePost * :redraw
"
" changes comment hl color
highlight Comment ctermfg=gray

" fix vim-airline once and for all?
	" this line only changed the symbol that was causing the issue but the
	" real fix is to just disable the whitespace extensions because it is
	" useless
	" let g:airline#extensions#whitespace#symbol = '!'
	let g:airline#extensions#whitespace#enabled = 0
"
" VimTeX config ----------------------------------------------------------

" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'zathura'

" Or with a generic interface:
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" VimTeX uses latexmk as the default compiler backend. If you use it, which is
" strongly recommended, you probably don't need to configure anything. If you
" want another compiler backend, you can change it as follows. The list of
" supported backends and further explanation is provided in the documentation,
" see ":help vimtex-compiler".
let g:vimtex_compiler_method = 'latexrun'

" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
" let maplocalleader = ","
" ------------------------------------------------------------------------

" java-syntax plugin highlighting config

"highlight link javaIdentifier NONE
