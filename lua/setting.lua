-- :help options
vim.cmd('filetype plugin on')
vim.cmd('filetype on')
vim.cmd('syntax on')
vim.g.nocompatible = true
vim.o.whichwrap='b,s,<,>,[,],h,l'  -- 允许使用上下左右箭头移动光标
vim.wo.number=true  -- line number
vim.o.mouse = 'a'
vim.o.cmdheight = 1  -- Number of screen line
vim.opt.termguicolors = true  -- Terminal color
vim.o.showtabline = 2
vim.o.hidden = true
vim.o.fileencoding = 'utf-8'
vim.o.showmode = false  -- show vim botton mode
vim.o.backup = false  -- no backup file
vim.o.writebackup = false  -- no backup file
vim.o.clipboard = 'unnamedplus'  -- clipboard
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
vim.o.wrap = true
vim.o.cursorline = true
vim.o.signcolumn = 'yes'
--self
vim.o.wildmenu = true  -- wildmenu
vim.o.wildignorecase = true  -- wildignorecase
vim.o.relativenumber = true  -- relative number
vim.o.incsearch = true  -- incsearch
vim.o.ignorecase = true  -- ignorecase also in cmd mode auto complete
vim.o.autoindent = true  -- autoindent

-- font
--vim.o.guifont = 'MesloLGS NF:h14'  -- font


-- tab
vim.o.tabstop = 4  -- tabstop
vim.o.softtabstop = 4  -- softtabstop
vim.o.expandtab = true  -- expandtab
vim.o.smarttab = true  -- smarttab
vim.o.smartindent = true  -- smartindent
vim.o.shiftwidth = 4  -- shiftwidth
--vim.cmd([[
--autocmd FileType yaml setlocal tabstop=2
--autocmd FileType md setlocal ts=2 sts=2 sw=2 expandtab
--]])


vim.o.fillchars="eob: "

-- window
vim.o.splitbelow = true  -- splitbelow
vim.o.splitright = true  -- splitright

-- indenting
--vim.o.foldmethod='indent'
--vim.o.foldmethod='manual'


--vim.o.setlocal = 'spell'

--vim.o.spelllang='en_us'


-- augroup highlightYankedText

-- highlightYankedText
vim.cmd([[
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=160})
augroup END
]])






-- 上次的的位置
vim.cmd([[
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \	execute 'normal! g`"zvzz' |
        \ endif
augroup END
]])


-- 输入法切换
-- 替代方法插件 xkbswitch
--vim.cmd([[
--let g:input_toggle = 0
--function! Fcitx2en()
   --let s:input_status = system("fcitx-remote")
   --if s:input_status == 2
      --let g:input_toggle = 1
      --let l:a = system("fcitx-remote -c")
   --endif
--endfunction

--function! Fcitx2zh()
   --let s:input_status = system("fcitx-remote")
   --if s:input_status != 2 && g:input_toggle == 1
      --let l:a = system("fcitx-remote -o")
      --let g:input_toggle = 0
   --endif
--endfunction

--set timeoutlen=150
--autocmd InsertLeave * call Fcitx2en()
--autocmd InsertEnter * call Fcitx2zh()
--]])

vim.cmd([[
function! Multiple_cursors_before()
  let g:smartim_disable = 1
endfunction
function! Multiple_cursors_after()
  unlet g:smartim_disable
endfunction
]])



--let g:vimtex_view_method = 'zathura'
--let g:vimtex_quickfix_mode=0
--filetype plugin indent on
--let maplocalleader = ","
vim.cmd([[
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0


set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none

set spelllang=en_us

let g:vimtex_compiler_progname='nvr'
]])
--vim.cmd('autocmd BufWinEnter,FileType * lua setKeybinds()') --keymapping based on file type
--syntax enable
--
--
--
--let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
--let g:vimtex_view_method = 'zathura'
--let g:latex_view_general_viewer = 'zathura'
--let g:vimtex_view_method='zathura'
--vim.cmd([[
--let g:tex_flavor='latex'
--let g:vimtex_quickfix_mode=0
--let g:vimtex_view_method='zathura'
--set spelllang=en_us
--set conceallevel=1
--let maplocalleader = ","
--let g:vimtex_compiler_latexmk = {
      --\ 'build_dir': 'build',
      --\ 'options' : [
      --\   '-shell-escape',
      --\   '-verbose',
      --\   '-file-line-error',
      --\   '-synctex=1',
      --\   '-interaction=nonstopmode',
      --\ ],
      --\}
--]])


vim.cmd([[
autocmd Filetype yaml setlocal et ts=2 sw=2 sts=0
set path+=**
]])


vim.cmd([[
let g:zettelkasten = "/Users/lawrencexing/home/lawrence/notes/zettelkasten/"
command! -nargs=1 NewZettel :execute ":e" zettelkasten . strftime("%Y%m%d%H%M") . "-<args>.md"

nnoremap <leader>nz :NewZettel 

" CtrlP function for inserting a markdown link with Ctrl-X
[init.lua](init.lua)
function! CtrlPOpenFunc(action, line)
   if a:action =~ '^h$'    
      " Get the filename
      let filename = fnameescape(fnamemodify(a:line, ':t'))
	  let filename_wo_timestamp = fnameescape(fnamemodify(a:line, ':t:s/\d\+-//'))

      " Close CtrlP
      call ctrlp#exit()
      call ctrlp#mrufiles#add(filename)

      " Insert the markdown link to the file in the current buffer
	  let mdlink = "[".filename_wo_timestamp."](".filename.")"
      put=mdlink
  else    
      " Use CtrlP's default file opening function
      call call('ctrlp#acceptfile', [a:action, a:line])
   endif
endfunction

let g:ctrlp_open_func = { 
         \ 'files': 'CtrlPOpenFunc',
         \ 'mru files': 'CtrlPOpenFunc' 
         \ }

]])
