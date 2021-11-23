" __  __        __     ___                    
"|  \/  |_   _  \ \   / (_)_ __ ___  _ __ ___ 
"| |\/| | | | |  \ \ / /| | '_ ` _ \| '__/ __|
"| |  | | |_| |   \ V / | | | | | | | | | (__ 
"|_|  |_|\__, |    \_/  |_|_| |_| |_|_|  \___|
"        |___/                                
"
"


set mouse=a
set notermguicolors
set encoding=utf-8
let mapleader = " "
syntax on
set number relativenumber
set noswapfile
set scrolloff=6
"set wrap
set wildmenu
"set wildmode=list:longest
set hlsearch
"exec "nohlsearch"
set ignorecase
set smartcase
set nocompatible
set tabstop=4 softtabstop=4
" set shiftwidth=4
set nu

"python
set softtabstop=4 shiftwidth=4 expandtab
set autoindent
set fileformat=unix



imap jk <C-[>
" nmap <space> :
nmap \ :
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
"noremap J 5j
"noremap K 5k
noremap <LEADER><CR> :nohlsearch<CR>

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif



"number 1: moving text 
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv 
inoremap <C-J> <esc>: m .+1<CR>== 
inoremap <C-k> <esc>: m .-2<CR>==
nnoremap <Leader>k :m .-2<CR>==
nnoremap <Leader>j :m .+1<CR>==

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
    Plug 'EdenEast/nightfox.nvim'  "theme
    Plug 'github/copilot.vim'
    Plug 'preservim/nerdcommenter'
    Plug 'voldikss/vim-floaterm'
    Plug 'liuchengxu/vim-which-key'
    Plug 'mbbill/undotree'  " Undo Tree
    Plug 'mhinz/vim-startify'  " vim-startify
    "Plug 'Yggdroot/indentLine'  "indent line
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " fzf
    Plug 'puremourning/vimspector',{ 'do': '.install_gabdet.py --enable-python' }  " vimspector
    Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
    "Plug 'nathanaelkane/vim-indent-guides'  " indent guides
call plug#end()
"https://github.com/skywind3000/asyncrun.git 
"https://github.com/skywind3000/asyncrun.vim

"===
"=== indent guides
"===
let g:indent_guides_enable_on_vim_startup = 1


" NERDTree快捷键
map <silent> <C-e> :NERDTreeToggle<CR>

" Find files using Telescope command-line sugar.
"nnoremap <leader>ff <cmd>Telescope find_files<cr>
"nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>


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
"map <C-p> :call CompileRunGcc()<CR>
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
"===fzf
"===
noremap <C-f> :FZF<CR>

"FZF（Fuzzy Finder）：又快速又方便的文件查找工具
"https://github.com/junegunn/fzf
"FZF的Vim插件：https://github.com/junegunn/fzf.vim
"我的Vim配置：https://github.com/theniceboy/nvim
"我的配置文件夹：https://github.com/theniceboy/.config
"（zsh和ranger两个文件夹里有fzf的配置）




" ===
" === vimspector
" ===
let g:vimspector_enable_mappings = 'HUMAN'
function! s:read_template_into_buffer(template)
    "" has to be a function to avoid the extra space fzf#run insers otherwise
    execute '0r ~/.config/nvim/sample_vimspector_json/'.a:template
endfunction
command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
            \   'source': 'ls -1 ~/.config/nvim/sample_vimspector_json',
            \   'down': 20,
            \   'sink': function('<sid>read_template_into_buffer')
            \ })
noremap <leader>vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
sign define vimspectorBP text=☛ texthl=Normal
sign define vimspectorBPDisabled text=☞ texthl=Normal
sign define vimspectorPC text=🔶 texthl=SpellBad

"===
"===python mode
"===
":help pymode

noremap <C-p> :PymodeRun<CR>
"noremap <C-p> :pymode_run_bind<CR>
"map <C-p> :call CompileRunGcc()<CR>
"let g:pymode_run_bind = '<leader>r'
"2.7 Run code
    "|   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |pymode-run

":PymodeRun -- Run current buffer or selection

"Turn on the run code script                                      'g:pymode_run'

    "let g:pymode_run = 1

"Binds keys to run python code                               'g:pymode_run_bind'

    "let g:pymode_run_bind = '<leader>r'


"===
"===python mode
"===
"let g:pymode_rope_goto_definition_bind = <C-]>
"

"===
"=== undo tree
"===

let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndent = 1
map L :UndotreeToggle<CR>

