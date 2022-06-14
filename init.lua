-- __  __        __     ___
--|  \/  |_   _  \ \   / (_)_ __ ___  _ __ ___
--| |\/| | | | |  \ \ / /| | '_ ` _ \| '__/ __|
--| |  | | |_| |   \ V / | | | | | | | | | (__
--|_|  |_|\__, |    \_/  |_|_| |_| |_|_|  \___|
--        |___/


if not vim.g.vscode then
    -- system setting
    require('keymappings')
    require('setting')
    require('colorscheme')
    require('autocommands')

    -- plugins
    require('plugin')
else
    require('vscode')
end

--vim.notify = require("notify")
--vim.notify("This is an error message", "error")
--vim.notify(text, "info", {
  --title = "My Awesome Plugin",
  --on_open = function(win)
    --local buf = vim.api.nvim_win_get_buf(win)
    --vim.api.nvim_buf_set_option(buf, "filetype", "markdown")
  --end,
--})


