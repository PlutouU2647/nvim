vim.cmd([[
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name":"default", "target_pane":"{right-of}"}
let g:slime_python_ipython = 1
xmap <c-c><c-c> <Plug>SlimeRegionSend
nmap <c-c><c-c> <Plug>SlimeParagraphSend
nmap <c-c>v     <Plug>SlimeConfig
colorscheme  duskfox
]])
