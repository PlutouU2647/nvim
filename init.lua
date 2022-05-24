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


