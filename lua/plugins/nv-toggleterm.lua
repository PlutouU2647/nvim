local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	return
end


toggleterm.setup{
    --size = 13,
    size =  function(term)
        if term.direction == "horizontal" then
            return 15
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,
    open_mapping = [[<C-\>]],
    hide_number = true,
    shade_filetype = {},
    shade_terminals = true,
    shading_factor = 1,
    start_in_insert_mode = true,
    presist_size = true,
    --direction = 'horizontal',
    --direction = 'vertical',
    direction = 'float',
    insert_mappings = true,
    close_on_exit = true, -- close the terminal window when the process exits
    shell = vim.o.shell, -- change the default shell
	float_opts = {
        border = "curved",
	},
}

function _G.set_terminal_keymaps()
    local opts = {noremap = true}
    local buf_keymap = vim.api.nvim_buf_set_keymap
    buf_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
    --buf_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
    buf_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
    buf_keymap(0, 't', '<D-p>', [[<C-\><C-n><C-W>h]], opts)
    buf_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
    buf_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
    buf_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
    buf_keymap(0, 't', '<C-[>', [[<C-\><C-n>]], opts)
    buf_keymap(0, 't', '<C-b>', "<cmd>echo &channel<cr>", opts)
    buf_keymap(0, 't', '`l', [[<C-\><cmd>tabn<cr>]], opts)
    buf_keymap(0, 't', '`h', [[<C-\><cmd>tabp<cr>]], opts)
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')


-- ┌────────────────────┐
-- │ Flot Term Function │
-- └────────────────────┘

-- ┌────┐
-- │ LF │
-- └────┘

local temp_path = "/tmp/lfpickerpath"
local Terminal  = require('toggleterm.terminal').Terminal


-- ┌─────────┐
-- │ Lazygit │
-- └─────────┘
function _LFPICKER_TOGGLE()
    local lfpicker = Terminal:new({
        --cmd = "lf -selection-path " .. vim.fn.getcwd(),
        cmd = "lf -selection-path " .. temp_path,

        direction = "float",
        on_close = function(term)
            local file = io.open(temp_path, "r")
            if file~=nil then
                vim.cmd("tabe " .. file:read("*a"))
                file:close()
                os.remove(temp_path)
            end
    end
    })
    lfpicker:toggle()
end

function _LAZYGIT_TOGGLE()
    local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
    lazygit:toggle()
end


function _TOGGLE_FLOAT()
    local float = Terminal:new({direction = "float"})
    return float:toggle()
end


function _TOGGLE_IPYTHON()
    local ipython = Terminal:new({cmd = "ipython", size = 60, direction= "vertical", dir="%:p:h"})
    return ipython:toggle()
end


function _TOGGLE_BLOW()
    local blow = Terminal:new({direction = "horizontal", size = 60})
    return blow:toggle()
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


--[[
https://github.com/akinsho/toggleterm.nvim
--]]
