" __  __        __     ___                    
"|  \/  |_   _  \ \   / (_)_ __ ___  _ __ ___ 
"| |\/| | | | |  \ \ / /| | '_ ` _ \| '__/ __|
"| |  | | |_| |   \ V / | | | | | | | | | (__ 
"|_|  |_|\__, |    \_/  |_|_| |_| |_|_|  \___|
"        |___/                                
"
"


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
"exec "nohlsearch"
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
nmap \ :
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
noremap J 5j
noremap K 5k
noremap <LEADER><CR> :nohlsearch<CR>

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif




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

    Plug 'github/copilot.vim'
    Plug 'preservim/nerdcommenter'
    Plug 'voldikss/vim-floaterm'

    Plug 'liuchengxu/vim-which-key'
    " Undo Tree
    Plug 'mbbill/undotree/'

    " vim-startify
    Plug 'mhinz/vim-startify'

    " indent line
    Plug 'Yggdroot/indentLine'
    " fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
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
nmap <TAB> gt
nmap <S-TAB> gT
nmap <C-w> :bd<CR>


"floaterm
source $HOME/.config/nvim/plug-config/floaterm.vim

"let g:floaterm_keymap_new = '<Leader>ft'
"nnoremap <leader>ft <cmd>FloatermNew<cr>
"nnoremap <leader>fs <cmd>FloatermKill<cr>

" whichkey
set timeoutlen=100
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
source $HOME/.config/nvim/keys/which-key.vim

" F5 to run sh/python3
"map <F5> :call CompileRunGcc()<CR>
map <C-p> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python %"
    elseif &filetype == 'go'
        exec "!time go run %"
    endif
endfunc



au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" startify
source $HOME/.config/nvim/plug-config/start-screen.vim

"===
"=== indent line
"===
let g:indentLine_char_list = ['|']
let g:indentLine_color_term = 238
let g:indentLine_color_gui = '#333333'
"silent! unmap <leader>ig
"autocmd WinEnter * silent! unmap <leader>ig
autocmd TermOpen * IndentLinesDisabl



"FZF（Fuzzy Finder）：又快速又方便的文件查找工具
"https://github.com/junegunn/fzf
"FZF的Vim插件：https://github.com/junegunn/fzf.vim
"我的Vim配置：https://github.com/theniceboy/nvim
"我的配置文件夹：https://github.com/theniceboy/.config
"（zsh和ranger两个文件夹里有fzf的配置）
