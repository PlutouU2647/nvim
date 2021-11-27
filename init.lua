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
-- airline
require'lualine'.setup()

-- theme
require('theme-edge')

require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'dracula',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff',
                  {'diagnostics', sources={'nvim_lsp', 'coc'}}},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}


-- plugin config where to put
