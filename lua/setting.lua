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
vim.o.guifont = 'MesloLGS NF:h13'  -- font
vim.o.incsearch = true  -- incsearch
vim.o.ignorecase = true  -- ignorecase also in cmd mode auto complete
vim.o.autoindent = true  -- autoindent



-- tab
vim.o.tabstop = 4  -- tabstop
vim.o.softtabstop = 4  -- softtabstop
vim.o.expandtab = true  -- expandtab
vim.o.smarttab = true  -- smarttab
vim.o.smartindent = true  -- smartindent
vim.o.shiftwidth = 4  -- shiftwidth



-- window 
vim.o.splitbelow = true  -- splitbelow
vim.o.splitright = true  -- splitright

vim.cmd([[
augroup highlightYankedText
    autocmd!
    autocmd TextYankPost *  silent! lua require'vim.highlight'.on_yank()
augroup END
]])

