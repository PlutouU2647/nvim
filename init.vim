"
" let mapleader = " "
syntax on
set nonumber
set wrap
set wildmenu
set hlsearch
exec "nohlsearch"
set ignorecase
set smartcase

imap jk <C-[>
nmap <space> :
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
noremap J 5j
noremap K 5k
noremap <LEADER><CR> :nohlsearch<CR>



call plug#begin('~/.vim/plugged')

Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()


" NERDTree快捷键
map <silent> <C-e> :NERDTreeToggle<CR>
