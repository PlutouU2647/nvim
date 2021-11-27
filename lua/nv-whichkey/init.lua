local wk = require("which-key")
local mappings = {
    q = {':q<CR>','quit'},
    w = {':w<CR>','save'},
    a = {'<Plug>Nerdcommenter Toggle','toggle comment'},
    E = {':e ~/.config/nvim/init.lua<CR>','Edit config'},
    f = {
        name = 'hi I did it!!!!!!!!!!!!!!',
        r = {'<cmd>Telescope oldfiles<cr>', 'Open Recent File'},
        c = {'<cmd>Telescope colorscheme<cr>', 'change theme'},
    },

}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
vim.o.timeoutlen = 250








-- :help which-key
-- 'https://github.com/folke/which-key.nvim'
