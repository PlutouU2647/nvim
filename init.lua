require('plugins')
require('keymappings')





-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

-- 之后就可以这样映射按键了
-- map('模式','按键','映射为XX',opt)

vim.g.mapleader = ' '

map('n', '<Leader>h', ':set hlsearch!<CR>', opt)
map('n', '<Space>', '<NOP>', opt)

-- vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true })

map('i','jk','<C-[>',opt)
-- map('n','\\',':',opt)
