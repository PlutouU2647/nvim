vim.cmd([[
augroup smartim 
  autocmd! 
  set timeoutlen=0 
  autocmd VimLeavePre * call Smartim_SelectDefault() 
  autocmd InsertLeave * call Smartim_SelectDefault() 
  autocmd InsertEnter * call Smartim_SelectSaved() 
augroup end 
]])
