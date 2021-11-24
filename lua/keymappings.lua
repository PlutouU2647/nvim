-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }
-- 之后就可以这样映射按键了
-- map('模式','按键','映射为XX',opt)

-- vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true })

vim.g.mapleader = ' '

-- Normal
map('n', '<Leader>h', ':set hlsearch!<CR>', opt)
map('n', '<Space>', '<NOP>', opt)
-- map('n','\\',':',opt)
map('n','S',':w<CR>',opt)
map('n','Q',':q<CR>',opt)
map('n','R',':source $MYVIMRC<CR>',opt)


-- Insert
map('i','jk','<C-[>',opt)
