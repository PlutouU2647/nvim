vim.g.tmux_navigator_no_mappings = 1

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }
map('n', '<c-h>', ':TmuxNavigateLeft<cr>', opt)
map('n', '<c-l>', ':TmuxNavigateRight<cr>', opt)
map('n', '<c-k>', ':TmuxNavigateUp<cr>', opt)
map('n', '<c-j>', ':TmuxNavigateDown<cr>', opt)

-- 'https://github.com/christoomey/vim-tmux-navigator'
