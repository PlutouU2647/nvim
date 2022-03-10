Terminal = require('toggleterm.terminal').Terminal



require'toggleterm'.setup{
    --size = 13,
    size =  function(term)
        if term.direction == "horizontal" then
            return 15
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,
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
function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  --vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  --vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  --vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-b>', "<cmd>echo &channel<cr>", opts)
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')


-- ┌────────────────┐
-- │ lf file picker │
-- └────────────────┘
local temp_path = "/tmp/lfpickerpath"
local Terminal  = require('toggleterm.terminal').Terminal

local lfpicker = Terminal:new({
  cmd = "lf -selection-path " .. temp_path,
  direction = "float",
  on_close = function(term)
    local file = io.open(temp_path, "r")
    if file~=nil
      then
        vim.cmd("tabe " .. file:read("*a"))
        file:close()
        os.remove(temp_path)
    end
  end
})

function _lfpicker_toggle()
  lfpicker:toggle()
end







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
