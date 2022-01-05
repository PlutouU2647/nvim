vim.cmd([[
if !empty($TMUX)
    echo "tmux mode"
    let g:slime_target = 'tmux'
    let g:slime_python_ipython = 1
    let g:slime_default_config = {
            \ 'socket_name': get(split($TMUX, ','), 0),
            \ 'target_pane': '{last}' }
    let g:slime_dont_ask_default = 1
else
    echo "vim mode"
    let g:slime_target = "neovim"
    let g:slime_last_channel = 7
    let g:slime_dont_ask_default = 1
]])

-- check is tmux is running
-- if true then config slime target
--ipython = require('ipythin-cell')
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }


--function hell()
  --retuen
--end

 --tmux mode
-- if filetype == 'python' then

--if filetype == 'python' then
    --map('n', '<C-M>', '<cmd>IPythonCellExecuteCellJump<CR>', {noremap = true, silent = false })
--end


map('n', '<leader>j', ':lua hello()<CR>', opt)
---- vim mode
--vim.cmd([[
--let g:slime_target = "neovim"
--]])

--check if tmux open
--if vim.fn.getbufvar("%", "&tmux") == 1 then
  --vim.cmd([[
  --let g:slime_target = 'tmux'
  --let g:slime_python_ipython = 1
  --let g:slime_default_config = {
            --\ 'socket_name': get(split($TMUX, ','), 0),
            --\ 'target_pane': '{last}' }
  --let g:slime_dont_ask_default = 1
  --]])
--else
  --vim.cmd([[
  --let g:slime_target = "neovim"
  --]])
--end


-- add cell
-- :IPythonCellInsertAbove<CR>
-- :IPythonCellInsertBelow<CR>
-- move
-- j :IPythonCellPrevCell<CR>
-- k :IPythonCellNextCell<CR>
-- leader q
-- IPythonCellExecuteCell

--map('n', '<c-[>', ':IPythonCellPrevCell<CR>', opt)
--map('n', '<c-]>', ':IPythonCellNextCell<CR>', opt)

map('n', '<leader>k', ':IPythonCellInsertAbove<CR>', opt)
--map('n', '<leader>j', ':IPythonCellInsertBelow<CR>', opt)
--map('i', '<c-k>', '<cmd>IPythonCellInsertAbove<CR>', opt)
--map('i', '<c-j>', '<cmd>IPythonCellInsertBelow<CR>', opt)

--map('n', '<C-M>', '<cmd>IPythonCellExecuteCellJump<CR>', {noremap = true, silent = false })
--map('n', '<S-M>', '<cmd>IPythonCellExecuteCellJump<CR>', {noremap = true, silent = false })

--map('i', 'c-[', '<C-n>', opt)
--map('i', 'c-]', '<C-n>', opt)


--map('n', '<leader>-o', ':IPythonCellExecuteCell<CR>', opt)
--map('v', 'c-o', ':IPythonCellExecuteCell<CR>', opt)




--vim.cmd([[
--"------------------------------------------------------------------------------
--" ipython-cell configuration
--"------------------------------------------------------------------------------
--" Keyboard mappings. <Leader> is \ (backslash) by default

--" map <Leader>s to start IPython
--nnoremap <Leader>s :SlimeSend1 ipython --matplotlib<CR>

--" map <Leader>r to run script
--nnoremap <Leader>r :IPythonCellRun<CR>

--" map <Leader>R to run script and time the execution
--nnoremap <Leader>R :IPythonCellRunTime<CR>

--" map <Leader>c to execute the current cell
--nnoremap <Leader>c :IPythonCellExecuteCell<CR>

--" map <Leader>C to execute the current cell and jump to the next cell
--nnoremap <Leader>C :IPythonCellExecuteCellJump<CR>

--" map <Leader>l to clear IPython screen
--nnoremap <Leader>l :IPythonCellClear<CR>

--" map <Leader>x to close all Matplotlib figure windows
--nnoremap <Leader>x :IPythonCellClose<CR>

--" map [c and ]c to jump to the previous and next cell header
--nnoremap [c :IPythonCellPrevCell<CR>
--nnoremap ]c :IPythonCellNextCell<CR>

--" map <Leader>h to send the current line or current selection to IPython
--nmap <Leader>h <Plug>SlimeLineSend
--xmap <Leader>h <Plug>SlimeRegionSend

--" map <Leader>p to run the previous command
--nnoremap <Leader>p :IPythonCellPrevCommand<CR>

--" map <Leader>Q to restart ipython
--nnoremap <Leader>Q :IPythonCellRestart<CR>

--" map <Leader>d to start debug mode
--nnoremap <Leader>d :SlimeSend1 %debug<CR>

--" map <Leader>q to exit debug mode or IPython
--nnoremap <Leader>q :SlimeSend1 exit<CR>

--" map <F9> and <F10> to insert a cell header tag above/below and enter insert mode
--nmap <F9> :IPythonCellInsertAbove<CR>
--nmap <F10> :IPythonCellInsertBelow<CR>

--" also make <F9> and <F10> work in insert mode
--imap <F9> <C-o>:IPythonCellInsertAbove<CR>
--imap <F10> <C-o>:IPythonCellInsertBelow<CR>
--]])


--
-- 'https://github.com/hanschen/vim-ipython-cell'
