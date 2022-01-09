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

-- Normal
map('n', '<Leader>h', ':set hlsearch!<CR>', opt)
map('n', '<Space>', '<NOP>', opt)
--map('n',"<leader>\",':',opt)
--map('n','S',':w<CR>',opt)
map('n','S',':up<CR>',{noremap = true, silent = false })
map('n','Q',':q<CR>',opt)
--map('n', ';', ':', opt)
--map('n', ':', ';', opt)

-- explorer
map('n', '<Leader>e', ':NvimTreeToggle<CR>', opt)


-- Insert
map('i','jk','<C-[>',opt)
map('i',';','<C-[>',opt)


-- better window movement
map('n','<C-h>','<C-w>h', { silent = true })
map('n','<C-j>','<C-w>j', { silent = true })
map('n','<C-k>','<C-w>k', { silent = true })
map('n','<C-l>','<C-w>l', { silent = true })

-- better edit mode movement
map('n', 'H', '^', opt)
map('n', 'L', '$', opt)
map('v', 'H', '^', opt)
map('v', 'L', '$', opt)

-- better indenting
map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)

-- Tab switch
map('n', '<TAB>', ':bnext<CR>', opt)
map('n', '<S-TAB>', ':bprevious<CR>', opt)
--map('n', '<C-w>', ':bd<CR>', opt)
map('n', '<C-w>', ':bdelete<CR>', opt)
--map('n', '<C-w>', '<CMD>BufferLinePickClose<CR>', opt)


-- move selected lines
--map('x', 'K', ':move \'<-2<CR>gv-gv\'' , opt)
--map('x', 'J', ':move \'>+1<CR>gv-gv\'' , opt)
map('v', 'J', ':m \'>+1<CR>gv=gv\'' , opt)
map('v', 'K', ':m \'<-2<CR>gv=gv\'' , opt)
--map('i', '<c-k>', '<esc>:m .-2<CR>==i' , opt)
--map('i', '<c-j>', '<esc>:m .+1<CR>==i' , opt)
--map('n', '<leader>j', ':m .+1<CR>==' , opt)
--map('n', '<leader>k', ':m .-2<CR>==' , opt)

-- comment
map('n','<leader>/', '<plug>NERDCommenterToggle', {noremap = false, silent = true })
map('v','<leader>/', '<plug>NERDCommenterToggle', {noremap = false, silent = true })

-- 改变窗口大小
--map('n','<up>', ':res -2<CR>', opt)
--map('n','<down>', ':res +2<CR>', opt)
--map('n','<left>', ':vertical resize -2<CR>', opt)
--map('n','<right>', ':vertical resize +2<CR>', opt)



-- insert edit mode
map('i','<c-k>', '<up>', opt)
map('i','<c-j>', '<down>', opt)
map('i','<c-h>', '<left>', opt)
map('i','<c-l>', '<right>', opt)


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
vim.cmd([[
nmap \ :
]])

--tnoremap <ESC> <C-\><C-n>
-- tmux_navigator
-- terminal 
--
--
-- goneovim
-- <D-v>
map('n','<D-v>', 'a<C-r>+<Esc>', opt)
map('i','<D-v>', '<C-r>+', opt)
map('c','<D-v>', '<C-r>+', opt)
