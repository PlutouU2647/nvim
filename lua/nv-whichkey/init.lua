local wk = require("which-key")
local mappings = {
    q = {':q<CR>','quit'},
    w = {':w<CR>','save'},
    a = {'<Plug>Nerdcommenter Toggle','toggle comment'},
    E = {':e ~/.config/nvim/init.lua<CR>','Edit config'},
    r = {':!python3 %<CR>','runcode'},
    f = {
        name = 'Telescope',
        r = {'<cmd>Telescope oldfiles<cr>', 'Recent File'},
        c = {'<cmd>Telescope colorscheme<cr>', 'Change Theme'},
        f = {'<cmd>Telescope find_files<cr>', 'Find Files'},
        g = {"<cmd>Telescope live_grep<cr>", "Live Grep"},
        h = {"<cmd>Telescope help_tags<cr>", "Help Tags"},
        b = {'<cmd>Telescope buffers<cr>', 'Search Buffer'},


    },
    t = {
        name = 'floaterm',
        r = {'<cmd>Telescope oldfiles<cr>'                    , 'Open Recent File'},
      --t = {'<cmd>FloatermNew --wintype=popup --height=6<CR>'        , 'terminal'},
        f = {'<cmd>FloatermNew fzf<CR>'                               , 'fzf'},
        g = {'<cmd>FloatermNew lazygit<CR>'                           , 'git'},
        d = {'<cmd>FloatermNew lazydocker<CR>'                        , 'docker'},
        n = {'<cmd>FloatermNew node<CR>'                              , 'node'},
        N = {'<cmd>FloatermNew nnn<CR>'                               , 'nnn'},
        p = {'<cmd>FloatermNew ipython<CR>'                           , 'ipython'},
        r = {'<cmd>FloatermNew ranger<CR>'                            , 'ranger'},
        t = {'<cmd>FloatermToggle<CR>'                                , 'toggle'},
        y = {'<cmd>FloatermNew ytop<CR>'                              , 'ytop'},
        s = {'<cmd>FloatermNew ncdu<CR>'                              , 'ncdu'},
     },

}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
vim.o.timeoutlen = 250



-- let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle'  , 'comment' ]
-- vim.cmd
-- vim.g.which_key_map['/'] = [ '<Plug>NERDCommenterToggle'  , 'comment' ]


--let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle'  , 'comment' ]
vim.cmd([[
map <leader>/ <Plug>NERDCommenterToggle
]])



--:help which-key
--'https://github.com/folke/which-key.nvim'
