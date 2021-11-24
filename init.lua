packadd! foo
lua require('plugins')






-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

-- 之后就可以这样映射按键了
-- map('模式','按键','映射为XX',opt)

map('n', '<Space>', '<NOP>', opt)
vim.g.mapleader = ' '
print(vim.inspect(vim.g.mapleader))
map('n', '<Leader>h', ':set hlsearch!<CR>', opt)
