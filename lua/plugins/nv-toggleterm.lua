Terminal = require('toggleterm.terminal').Terminal
--toggle_float = function()
    --float = Terminal:new({direction = 'float'})
    --float:toggle()
--end
--toggle_lazygit = function()
    --lazygit = Terminal:new({
        --cmd = 'lazygit',
        --direction= 'float'})
    --return lazygit:toggle()
--end
--toggle_ipython = function()
    --ipython = Terminal:new({
        --cmd = 'ipython', 
        --direction= 'float'})
    --return ipython:toggle()
--end
--toggle_ranger= function()
    --ranger = Terminal:new({
        --cmd = 'ranger',
        --direction= 'float'})
    --return ranger:toggle()
--end




require'toggleterm'.setup{
    size = 13,
    open_mapping = [[<C-\>]],
    shade_filetype = {},
    shade_terminals = true,
    shading_factor = 1,
    start_in_insert_mode = true,
    presist_size = true,
    --direction = 'horizontal',
    --direction = 'vertical',
    direction = 'float',
}


--[Get_the_name_of_the_current_file](https://vim.fandom.com/wiki/Get_the_name_of_the_current_file)
-- 'https://github.com/akinsho/toggleterm.nvim'
-- todo
-- toggle open current path
--
-- This PR adds the ability to open toggle term to a specific directory.

--:ToggleTerm size=25 dir=~/.dotfiles
--It required a bit of a refactor so I could specify the opening directory and differentiate it from other args like size. Unfortunately the lua,viml command declaration is a bit rough atm, so the current implentation was the best workaround I could find.

--Unfortunately the tradeoff is that using :TermExec now works like

--:TermExec size=30 cmd="git status" dir=~/work-repo
--Since distinguishing the size and dir from the command would have been tough otherwise

--expand('%:p:h')
--ToggleTerm size=25 dir=%:p:h
