-- __  __        __     ___                    
--|  \/  |_   _  \ \   / (_)_ __ ___  _ __ ___ 
--| |\/| | | | |  \ \ / /| | '_ ` _ \| '__/ __|
--| |  | | |_| |   \ V / | | | | | | | | | (__ 
--|_|  |_|\__, |    \_/  |_|_| |_| |_|_|  \___|
--        |___/                                
--

-- guide
    --'https://github.com/glepnir/nvim-lua-guide-zh'
    --'https://github.com/rockerBOO/awesome-neovim'
-- goal
    --'https://github.com/ayamir/nvimdots'

-- issue how to run python
--  slime?
--  python mode? 
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
--#725

require('plugins')
require('keymappings')
require('setting')
require('colorscheme')

-- plugins
--require('nv-cmp')
require('nv-colorizer')
require('nv-nvimtree')
require('nv-bufferline')
require('nv-gitsigns')
require('nv-dashboard')
require('nv-whichkey')
require('nv-nerdcommenter')
require('nv-telescope')
require('nv-indentline')
require('nv-telescope')
require('nv-treesitter')
require('nv-toggleterm')
require('nv-nvimdap')
require('nv-wilder')
require('nv-lualine')
require('nv-vsnip')
require('nv-xkbswitch')
-- comment


-- ide
require('nv-slime')
-- theme
require('theme-edge')
--require('theme-nightfox')
--require('theme-nvim')

--vim.g.nvim_tree_indent_markers = 1 

-- plugin config where to put
--
-- copilot
-- 'https://github.com/github/feedback/discussions?discussions_q=vim'
--
--
--
--
--
