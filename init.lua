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
--#725

require('plugins')
require('keymappings')
require('setting')
require('colorscheme')

-- plugins
require('nv-compe')
require('nv-colorizer')
require('nv-nvimtree')
require('nv-bufferline')
require('nv-gitsigns')
require('nv-dashboard')
require('nv-whichkey')
require('nv-nerdcommenter')
require('nv-telescope')
require('nv-floaterm')
require('nv-indentline')
require('nv-telescope')
require('nv-treesitter')
require('nv-toggleterm')
require('nv-nvimdap')
require('nv-wilder')
require('nv-lualine')

-- theme
require('theme-edge')
-- plugin config where to put
