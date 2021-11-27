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
    t = {
        name = 'floaterm',
        r = {'<cmd>Telescope oldfiles<cr>'                    , 'Open Recent File'},
      --t = {':FloatermNew --wintype=popup --height=6<CR>'        , 'terminal'},
        f = {':FloatermNew fzf<CR>'                               , 'fzf'},
        g = {':FloatermNew lazygit<CR>'                           , 'git'},
        d = {':FloatermNew lazydocker<CR>'                        , 'docker'},
        n = {':FloatermNew node<CR>'                              , 'node'},
        N = {':FloatermNew nnn<CR>'                               , 'nnn'},
        p = {':FloatermNew ipython<CR>'                           , 'ipython'},
        r = {':FloatermNew ranger<CR>'                            , 'ranger'},
        t = {':FloatermToggle<CR>'                                , 'toggle'},
        y = {':FloatermNew ytop<CR>'                              , 'ytop'},
        s = {':FloatermNew ncdu<CR>'                              , 'ncdu'},
     },

}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
vim.o.timeoutlen = 250








-- :help which-key
-- 'https://github.com/folke/which-key.nvim'