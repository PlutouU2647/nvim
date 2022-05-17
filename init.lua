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

    -- plugins
    require('plugin')

    --vim.cmd("colorscheme duskfox")
    --require('plugins/theme-nightfox')
else
    require('vscode')
end


--vim.cmd([[
--nnoremap <silent> gs <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
--nnoremap <silent> B <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
--]])
--
