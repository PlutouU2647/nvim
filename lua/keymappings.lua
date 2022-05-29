-- silent true means do not print a message when the key is bound
-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }
-- 之后就可以这样映射按键了
-- map('模式','按键','映射为XX',opt)

-- vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true })


--local map = function(mode, key, commandt)
  --vim.api.nvim_set_keymap(mode, key, command, opt)
--end


vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- Normal
map('n', '<Bar>', '<CMD>echo "empty key!!"<CR>', {noremap = true, silent = false})
map('n', '<Bslash>', ':', {noremap = true, silent = false})
map('n', '<Leader>h', ':nohlsearch<CR>', opt)
map('n', '<Space>', '<NOP>', opt)
--map('n',"<leader>\",':',opt)
map('n','S',':w<CR>',opt)
--map('n','S',':up<CR>',{noremap = true, silent = false })
map('n','Q',':q<CR>',opt)
--map('n', ';', ':', opt)
--map('n', ':', ';', opt)
-- 运行代码
map('n', '<LocalLeader>r', ":RunCode<CR>", opt)
-- explorer
map('n', '<Leader>e', ':NvimTreeToggle<CR>', opt)


-- Insert
map('i','jk','<C-[>',opt)
map('i',';','<C-[>',opt)
map('i','ï¼<xCSI>','<C-[>',opt)


-- better window movement
map('n','<C-h>','<C-w>h', { silent = true })
map('n','<C-j>','<C-w>j', { silent = true })
map('n','<C-k>','<C-w>k', { silent = true })
map('n','<C-l>','<C-w>l', { silent = true })

-- better edit mode movement
map('n', 'H', '^', opt)
map('n', 'L', '$', opt)


-- Tab switch
--map('n', '<TAB>', ':bnext<CR>', opt)
map('n', '<S-TAB>', ':bprevious<CR>', opt)
--map('n', '<C-w>', ':bd<CR>', opt)
--map('n', '<C-w>', '<CMD>BufferLinePickClose<CR>', opt)
map('n', '<leader>1', '<Cmd>BufferLineGoToBuffer 1<CR>', opt)
map('n', '<leader>2', '<Cmd>BufferLineGoToBuffer 2<CR>', opt)
map('n', '<leader>3', '<Cmd>BufferLineGoToBuffer 3<CR>', opt)
map('n', '<leader>4', '<Cmd>BufferLineGoToBuffer 4<CR>', opt)
map('n', '<leader>5', '<Cmd>BufferLineGoToBuffer 5<CR>', opt)






-- move selected lines
--map('x', 'K', ':move \'<-2<CR>gv-gv\'' , opt)
--map('x', 'J', ':move \'>+1<CR>gv-gv\'' , opt)
--map('i', '<c-k>', '<esc>:m .-2<CR>==i' , opt)
--map('i', '<c-j>', '<esc>:m .+1<CR>==i' , opt)
--map('n', '<leader>j', ':m .+1<CR>==' , opt)
--map('n', '<leader>k', ':m .-2<CR>==' , opt)

-- comment
map('n','<leader>/', '<plug>NERDCommenterToggle', {noremap = false, silent = true })
-- 改变窗口大小
map('n','<up>', ':res -2<CR>', opt)
map('n','<down>', ':res +2<CR>', opt)
map('n','<left>', ':vertical resize -2<CR>', opt)
map('n','<right>', ':vertical resize +2<CR>', opt)




-- insert edit mode
--map('i','<c-k>', '<up>', opt)
--map('i','<c-j>', '<down>', opt)
--map('i','<c-h>', '<left>', opt)


-- spell check
map('i','<C-l>', '<c-g>u<Esc>[s1z=`]a<c-g>u', opt)


--map('x','<leader>ii', '<Plug>SlimeRegionSend', {noremap = false, silent = false })
--map('n','<leader>io', '<Plug>SlimeParagraphSend', {noremap = false, silent = false })
--map('n','<leader>/',  '<Plug>SlimeConfig', {noremap = false, silent = false })
--xmap <c-c><c-c> <Plug>SlimeRegionSend
--nmap <c-c><c-c> <Plug>SlimeParagraphSend
--nmap <c-c>v     <Plug> SlimeConfig

-- better paste
--map('v', 'p', '"_dP', opt)
-- sourcefile
--map('n','<leader>r', ':source $MYVIMRC<cr>', {silent = false })
--map('n','<leader>r', ':source %<cr>', {silent = false })

--plug
--map('n', 'L', ':UndotreeToggle<CR>' , opt)

--tnoremap <ESC> <C-\><C-n>
-- tmux_navigator
-- terminal
--
--


--
--

-- ┌─────────┐
-- │ Obsidan │
-- └─────────┘
-- TODO:Open note in Obsidian from within Vim
--'https://forum.obsidian.md/t/open-note-in-obsidian-from-within-vim-and-vice-versa/6837'
--command IO execute "silent !open 'obsidian://open?vault=VAULTNAME&file=" . expand('%:r') . "'"
--nnoremap <leader>io :<CR>
--
--map('n','<leader>io', ':lua require(function-obsidian)<CR>', opt)
--
-- obsidian
--map('n', '<Leader>ob', ":silent !open 'obsidian://open?vault=markdown'<CR>", opt)
map('n', "<Leader>ob", ":silent !open 'obsidian://open?vault=markdown&file=%:r'<CR>", opt)
map('n', "<LocalLeader><LocalLeader>", ":silent !open 'obsidian://open?vault=markdown&file=%:r'<CR>", opt)
--map('n', '<LocalLeader><LocalLeader>', ":silent !open 'obsidian://open?vault=markdown'<CR>", opt)
map('n', "<C-;>", ":silent !open 'obsidian://open?vault=markdown&file=%:r'<CR>", opt)


-- ┌────────────┐
-- │ ToggleTerm │
-- └────────────┘
--map('n', '<c-p>', '<cmd>lua _lfpicker_toggle()<cr>', opt)
map('n', '<leader>lf', '<cmd>lua _lfpicker_toggle()<cr>', opt)

-- ┌────────┐
-- │ WINDOW │
-- └────────┘
map('n', '`l', '<cmd>tabn<cr>', opt)
map('n', '`h', '<cmd>tabp<cr>', opt)
map('n', '`c', '<cmd>tabnew %<cr>', opt)
map('n', '`v', '<cmd>vs<CR>', opt)
map('n', '`b', '<cmd>sv<CR>', opt)

-- ┌──────────┐
-- │ goneovim │
-- └──────────┘
map('n','<D-v>', 'a<C-r>+<Esc>', opt)
map('i','<D-v>', '<C-r>+', opt)
map('c','<D-v>', '<C-r>+', opt)
--EDITOR
--map('n', '<D-1>', '<Cmd>BufferLineGoToBuffer 5<CR>', opt)
map('n', '<C-w>', ':bd<CR>', opt)
map('n', '<D-w>', ':bd<CR>', opt)
map('n', '<D-o>', ':Telescope find_files<CR>', opt)
map('n', '<D-e>', '<Cmd>Telescope oldfiles<CR>', opt)
map('n', '<D-i>', '<Cmd>Telekasten insert_link<CR>', opt)
map('i', '<D-i>', '<Cmd>Telekasten insert_link<CR>', opt)

map('i','<D-/>', '<plug>NERDCommenterToggle', {noremap = false, silent = true })
map('n','<D-/>', '<plug>NERDCommenterToggle', {noremap = false, silent = true })
map('n', '<S-D-]>', '<Cmd>BufferLineCycleNext<CR>', opt)
map('n', '<S-D-[>', '<Cmd>BufferLineCyclePrev<CR>', opt)

map('n', '<D-p>', '<Cmd>lua _lfpicker_toggle()<CR>', opt)
map('n', '<S-D-F>', '<Cmd>Telescope live_grep<CR>', opt)
map('n', '<D-[>', '<Cmd>bprevious<CR>', opt)
map('n', '<D-]>', '<Cmd>bnext<CR>', opt)
-- vimwiki
map('n', '<C-,>', ":VimwikiMakeDiaryNote<CR>", opt)

-- ┌─────────┐
-- │ Luasnip │
-- └─────────┘
map('n', '<D-l>', "<cmd>Telescope ultisnips theme=dropdown<CR>", opt)
map('i', '<D-l>', "<cmd>Telescope ultisnips theme=dropdown<CR>", opt)

-- ┌────────────┐
-- │ BufferLine │
-- └────────────┘
map('n', '<D-1>', '<Cmd>BufferLineGoToBuffer 1<CR>', opt)
map('n', '<D-2>', '<Cmd>BufferLineGoToBuffer 2<CR>', opt)
map('n', '<D-3>', '<Cmd>BufferLineGoToBuffer 3<CR>', opt)
map('n', '<D-4>', '<Cmd>BufferLineGoToBuffer 4<CR>', opt)
map('n', '<D-5>', '<Cmd>BufferLineGoToBuffer 5<CR>', opt)

vim.cmd([[
imap “ <Plug>(copilot-next)
imap ‘ <Plug>(copilot-previous)
imap ” <Plug>(copilot-next)
imap ‘ <Plug>(copilot-previous)
]])

--
--
--
--自定义文件类型快捷键
--vim.cmd([[
--autocmd FileType lua                nnoremap <silent> <C-a> :echo 'lua'<CR>
--autocmd FileType markdown           nnoremap <silent> <C-a> :echo 'md'<CR>
--]])
--nmap <c-a> :hello
vim.cmd([[
]])
--nmap <c-a> <Plug>SlimeCellsPrev
  --autocmd FileType markdown  imap <silent><script><expr> <C-j> copilot#Accept("\<CR>")
  --autocmd FileType markdown  imap <silent><script><expr> <C-j> copilot#Accept("\<CR>")
  --imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")


-- ┌─────────────┐
-- │ visual mode │
-- └─────────────┘

-- better edit mode movement
map('v', 'H', '^', opt)
map('v', 'L', '$', opt)

-- better indenting
map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)

-- move selected lines
map('v', 'J', ':m \'>+1<CR>gv=gv\'' , opt)
map('v', 'K', ':m \'<-2<CR>gv=gv\'' , opt)

-- visual模式粘贴
map('v', 'p', '"_dP', opt)

-- comment
map('v','<leader>/', '<plug>NERDCommenterToggle', {noremap = false, silent = true })


-- goneovim
map('v', ';', "<Cmd>'<,'> Tabularize /:<CR>", opt)

map('v','<D-/>', '<plug>NERDCommenterToggle', {noremap = false, silent = true })

