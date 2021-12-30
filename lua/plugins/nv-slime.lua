-- tmux mode
vim.cmd([[
let g:slime_target = "tmux"
let g:slime_python_ipython = 1
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}
let g:slime_dont_ask_default = 1
]])


--let g:slime_default_config = {"socket_name":"default", "target_pane":"{right-of}"}

---- vim mode
--vim.cmd([[
--let g:slime_target = "neovim"
--let g:slime_cell_delimiter = "###"
--let b:slime_config = {}
--]])


--xmap <c-c><c-c> <Plug>SlimeRegionSend
--nmap <c-c><c-c> <Plug>SlimeParagraphSend
--nmap <c-c>v     <Plug>SlimeConfig



-- 'https://github.com/jpalardy/vim-slime'
