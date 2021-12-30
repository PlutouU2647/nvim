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

vim.cmd([[
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \	execute 'normal! g`"zvzz' |
        \ endif
augroup END
]])

vim.g.input_toggle = 0
vim.g.timeoutlen=150

vim.cmd([[
function! Fcitx2en()
    let s:input_status = system("fcitx-remote")
    if s:input_status == 2
        let g:input_toggle = 1
        let l:a = system("fcitx-remote -c")
    endif
endfunction

function! Fcitx2zh()
    let s:input_status = system("fcitx-remote")
    if s:input_status != 2 && g:input_toggle == 1
        let l:a = system("fcitx-remote -o")
        let g:input_toggle = 0
    endif
endfunction
autocmd InsertLeave * call Fcitx2en()
autocmd InsertEnter * call Fcitx2zh()
]])

vim.cmd([[
set rtp+=~/.local/share/nvim/site/pack/packer/opt/nvim-gps
set rtp+=~/.local/share/nvim/site/pack/packer/opt/nvim-treesitter
]])

