-- __  __        __     ___
--|  \/  |_   _  \ \   / (_)_ __ ___  _ __ ___
--| |\/| | | | |  \ \ / /| | '_ ` _ \| '__/ __|
--| |  | | |_| |   \ V / | | | | | | | | | (__
--|_|  |_|\__, |    \_/  |_|_| |_| |_|_|  \___|
--        |___/


-- system setting
require('keymappings')
require('setting')
require('colorscheme')

-- plugins
require('plugin')

vim.cmd([[
augroup smartim 
  autocmd! 
  set timeoutlen=0 
  autocmd VimLeavePre * call Smartim_SelectDefault() 
  autocmd InsertLeave * call Smartim_SelectDefault() 
  autocmd InsertEnter * call Smartim_SelectSaved() 
augroup end 
]])

