-- :help options
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
vim.o.scrolloff = 5
vim.o.sidescrolloff = 5
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
vim.o.guifont = 'MesloLGS NF:h14'  -- font


-- tab
vim.o.tabstop = 4  -- tabstop
vim.o.softtabstop = 4  -- softtabstop
vim.o.expandtab = true  -- expandtab
vim.o.smarttab = true  -- smarttab
vim.o.smartindent = true  -- smartindent
vim.o.shiftwidth = 4  -- shiftwidth


vim.o.fillchars="eob: "

-- window
vim.o.splitbelow = true  -- splitbelow
vim.o.splitright = true  -- splitright

-- indenting
--vim.o.foldmethod='indent'
vim.o.foldmethod='manual'

vim.cmd([[
augroup highlightYankedText
    autocmd!
    autocmd TextYankPost *  silent! lua require'vim.highlight'.on_yank()
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
vim.cmd([[
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let maplocalleader = ","


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
let g:vimwiki_list = [{'path': '/Users/lawrence/Library/Mobile Documents/iCloud~md~obsidian/Documents/MarkDown/000vimwiki',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
]])



local wkl = require('which-key')

vim.cmd('autocmd FileType * lua setKeybinds()')
function setKeybinds()
    local fileTy = vim.api.nvim_buf_get_option(0, "filetype")
    local opts = { prefix = '<leader>', buffer = 0 }

    if fileTy == 'python' then
        wkl.register({
            m = {
                name = "Python",
                m = {':w', 'test write'},
                q = {':q', 'test quit'},
            }
        }, opts)
    elseif fileTy == 'lua' then
        wkl.register({
            m = {
                name = "Shell",
                m = {':w', 'test write'},
                q = {':q', 'test quit'},
            }
        }, opts)
    end
end
