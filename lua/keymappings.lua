-- silent = true means don't print a message when the key is bound
-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }
-- 之后就可以这样映射按键了
-- map('模式','按键','映射为XX',opt)

-- vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true })


vim.cmd([[
nmap \ :
]])



vim.g.mapleader = ' '

-- Normal
map('n', '<Leader>h', ':set hlsearch!<CR>', opt)
map('n', '<Space>', '<NOP>', opt)
--map('n',"<leader>\",':',opt)
--map('n','S',':w<CR>',opt)
map('n','S',':up<CR>',opt)
map('n','Q',':q<CR>',opt)
map('n','R',':source $MYVIMRC<CR>',opt)


-- explorer
map('n', '<Leader>e', ':NvimTreeToggle<CR>', opt)


-- Insert
map('i','jk','<C-[>',opt)


-- better window movement
map('n','<C-h>','<C-w>h', { silent = true })
map('n','<C-j>','<C-w>j', { silent = true })
map('n','<C-k>','<C-w>k', { silent = true })
map('n','<C-l>','<C-w>l', { silent = true })


-- better indenting
map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)

-- Tab switch 
map('n', '<TAB>', ':bnext<CR>', opt)
map('n', '<S-TAB>', ':bprevious<CR>', opt)
map('n', '<C-w>', ':bd<CR>', opt)


-- move selected lines
--map('x', 'K', ':move \'<-2<CR>gv-gv\'' , opt)
--map('x', 'J', ':move \'>+1<CR>gv-gv\'' , opt)
map('v', 'J', ':m \'>+1<CR>gv=gv\'' , opt)
map('v', 'K', ':m \'<-2<CR>gv=gv\'' , opt)
map('i', '<c-k>', '<esc>:m .-2<CR>==i' , opt)
map('i', '<c-j>', '<esc>:m .+1<CR>==i' , opt)
map('n', '<leader>j', ':m .+1<CR>==' , opt)
map('n', '<leader>k', ':m .-2<CR>==' , opt)

-- comment
map('n','<leader>/', '<plug>NERDCommenterToggle', {noremap = false, silent = true })
map('v','<leader>/', '<plug>NERDCommenterToggle', {noremap = false, silent = true })



--plug
map('n', 'L', ':UndotreeToggle<CR>' , opt)



