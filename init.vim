set notermguicolors
set encoding=utf-8
let mapleader = " "
syntax on
set number relativenumber
set noswapfile
set scrolloff=6
set wrap
set wildmenu
set hlsearch
exec "nohlsearch"
set ignorecase
set smartcase
set nocompatible
set tabstop=4 softtabstop=4
" set shiftwidth=4
set nu

" python
set softtabstop=4 shiftwidth=4 expandtab
set autoindent
set fileformat=unix



imap jk <C-[>
" nmap <space> :
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
noremap J 5j
noremap K 5k
noremap <LEADER><CR> :nohlsearch<CR>



call plug#begin('$HOME/.config/nvim/plugged')
    Plug 'ervandew/supertab'
    Plug 'vim-airline/vim-airline'
    Plug 'ervandew/supertab'
    Plug 'scrooloose/nerdtree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'
    Plug 'sheerun/vim-polyglot'
    "color
    Plug 'kaicataldo/material.vim', { 'branch': 'main' }
    "Plug 'arcticicestudio/nord-vim'
    "Plug 'joshdick/onedark.vim'
    "Plug 'ghifarit53/tokyonight-vim'
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
    Plug 'morhetz/gruvbox'
  
    "theme
    Plug 'EdenEast/nightfox.nvim'

    Plug 'preservim/nerdcommenter'
call plug#end()
    




" NERDTree快捷键
map <silent> <C-e> :NERDTreeToggle<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


"colorscheme onedark
"colorscheme tokyonight

" tokyonight:start
"set termguicolors
"let g:tokyonight_style = 'night' " available: night, storm
"let g:tokyonight_enable_italic = 1
"colorscheme tokyonight
"" tokyonight:end
"colorscheme material
"let g:material_theme_style = 'palenight'
"
"" Fix italics in Vim
"if !has('nvim')
"  let &t_ZH="\e[3m"
"  let &t_ZR="\e[23m"
"endif
"let g:material_terminal_italics = 1
"

colorscheme duskfox
"set background=dark
"set t_Co=256


if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" python
nmap <C-_> <Plug>NERDCommenterToggle
"vmap <C-_> <Plug>NERDCommenterToggle<CR>gv
"
" Tabs
nmap <leader>1 gT
nmap <leader>2 gt
nmap <C-w> :bd<CR>




