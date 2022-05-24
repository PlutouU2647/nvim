--[[
copilot
https://github.com/github/feedback/discussions?discussions_q=vim
--]]
vim.g.copilot_filetypes = {
  ["*"] = false,
}

vim.cmd [[
  imap <silent><script><expr> <C-A> copilot#Accept("\<CR>")
  let g:copilot_no_tab_map = v:true
]]
