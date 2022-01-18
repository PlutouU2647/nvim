-- __  __        __     ___
--|  \/  |_   _  \ \   / (_)_ __ ___  _ __ ___
--| |\/| | | | |  \ \ / /| | '_ ` _ \| '__/ __|
--| |  | | |_| |   \ V / | | | | | | | | | (__
--|_|  |_|\__, |    \_/  |_|_| |_| |_|_|  \___|
--        |___/
--
-- 🌑🌕
--guide
    --'https://github.com/glepnir/nvim-lua-guide-zh'
-- goal
--'https://github.com/rockerBOO/awesome-neovim'
    --'https://github.com/ayamir/nvimdots'

-- issue how to run python
--  slime? python mode?
-- 'https://github.com/jpalardy/vim-slime'
--
--
-- vim-easy-align
-- 'https://github.com/junegunn/vim-easy-align'
--
-- vimsurround
--
-- highlight word
-- 'https://github.com/lfv89/vim-interestingwords'
-- theme
-- [theme_github](https://github.com/rafi/awesome-vim-colorschemes)

--#746

--#790
-- system setting
require('plugin')
require('keymappings')
require('setting')
require('colorscheme')

-- plugins
--require('plugins/nv-colorizer')
--require('plugins/nv-nvimtree')
--require('plugins/nv-bufferline')
--require('plugins/nv-gitsigns')
--require('plugins/nv-dashboard')
--require('plugins/nv-whichkey')
require('plugins/nv-nerdcommenter')
--require('plugins/nv-indentline')
--require('plugins/nv-telescope')
--require('plugins/nv-treesitter')
require('plugins/nv-toggleterm')
--require('plugins/nv-nvimdap')
--require('plugins/nv-wilder')
--require('plugins/nv-lualine')
require('plugins/nv-vsnip')


-- ide
--require('plugins/nv-slime')
-- theme
--require('plugins/theme-edge')
require('plugins/theme-nightfox')
--require('theme-rose')

-- cmp
--require('plugins/nv-cmp')

-- lsp
--require('plugins/nv-lsp')
--require('plugins/lsp')

--require('plugins/asynctasks')
--require('plugins/nv-a


-- copilot
-- 'https://github.com/github/feedback/discussions?discussions_q=vim'

--utillsnip
vim.cmd([[
"设置tab键为触发键
let g:UltiSnipsExpandTrigger = '<tab>'
"设置向后跳转键
let g:UltiSnipsJumpForwardTrigger = '<tab>'
"设置向前跳转键
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
"设置文件目录
let g:UltiSnipsSnippetDirectories=['~/.config/nvim/UltiSnips/']
"设置打开配置文件时为垂直打开
let g:UltiSnipsEditSplit="vertical"
]])

vim.cmd([[
let g:copilot_filetypes = {
                      \ 'xml': v:false,
                                    \ }
]])
                      --\ 'md': v:true,
                      --\ 'tex': v:false,

--vim pandoc
--vim.cmd([[
--augroup pandoc_syntax
    --au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
--augroup END
--]])
--markdown new
vim.cmd([[
let g:vim_markdown_math = 1
]])

