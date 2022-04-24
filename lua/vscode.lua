local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }
map('n', 'H', '^', opt)
map('n', 'L', '$', opt)
map('v', 'H', '^', opt)
map('v', 'L', '$', opt)

map('i', 'jk', '<c-[>', opt)
map('i', ';', '<c-[>', opt)

