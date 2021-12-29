--'~/.local/share/nvim/site/pack/packer'
local fn = vim.fn

-- Automatically load plugins
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system{
        'git',
        'clone',
        '--depth',
        '1',
        'https://github.com/wbthomason/packer.nvim',
        install_path
    }
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
          return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- plugins
return packer.startup(function(use)
    -- main plugins
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'

    use {
        'kyazdani42/nvim-web-devicons',
        opt = false,
    }

    use {
        'kyazdani42/nvim-tree.lua',
        opt = true,
        cmd = {"NvimTreeToggle", "NvimTreeOpen"},
        config = "require('plugins/nv-nvimtree')"
        --config = con"require('plugins/nv-nvimtree')"
    }
    use {
        'github/copilot.vim',
        event = 'BufRead',
    }
    use {
        'nvim-lualine/lualine.nvim',
        --opt = true,
        --event = 'BufRead',
        --event = 'BufWinEnter',
        config = "require('plugins/nv-lualine')"
    }
    use {
        "SmiteshP/nvim-gps",
        requires = "nvim-treesitter/nvim-treesitter",
        --config = "require('plugins/nv-gps')"
    }
    use {
        'christoomey/vim-tmux-navigator',  -- tmux-navigator
        config = "require('plugins/nv-tmux-navigator')",
        }

    use {
        'itchyny/vim-cursorword',
        opt = true,
        event = 'BufRead',
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        opt = true,
        event = "BufRead",
        config ="require('plugins/nv-treesitter')"
    }
    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        opt = true,
        cmd = 'Telescope',
        config = "require('plugins/nv-telescope')"
    }

    -- colorscheme
    use {
        'EdenEast/nightfox.nvim',  -- colorscheme
        config = "require('plugins/theme-nightfox')",
        --config = "vim.cmd('colorscheme duskfox')"
    }

    --use({
    --'rose-pine/neovim',
    ----as = 'rose-pine',
    --tag = 'v0.1.0', -- Optional tag release
    --})  -- rose-pine

    use {
        'norcalli/nvim-colorizer.lua',  -- colorizer
        event = 'BufRead',
        config = "require('plugins/nv-colorizer')"
    }
    use {
        'akinsho/bufferline.nvim',
        opt = true,
        event = "BufRead",
        config = "require('plugins/nv-bufferline')"
    }
    use {
        'lewis6991/gitsigns.nvim',
        opt = true,
        event = {"BufRead", "BufNewFile"},
        config = "require('plugins/nv-gitsigns')"
    }
    use {
        'glepnir/dashboard-nvim', event = 'BufWinEnter', config = "require('plugins/nv-dashboard')"
    }
    use {
        'folke/which-key.nvim',
        opt = true,
        keys = "<leader>",
        config = "require('plugins/nv-whichkey')"

    }
    use {
        'preservim/nerdcommenter', config = "require('plugins/nv-nerdcommenter')", event = 'BufRead'
    }
    --use 'mbbill/undotree'  -- undo tree
    use {
        "lukas-reineke/indent-blankline.nvim",
        opt = true,
        event = 'BufRead',
        config = "require('plugins/nv-indentline')",

    }
    use {
        'windwp/nvim-autopairs',
        event = 'insertEnter',
        config = "require('plugins/nv-auto-pairs')"
    }
    use 'romgrk/fzy-lua-native'

    -- terminal
    use {
        'akinsho/toggleterm.nvim',
        --opt = true,
        --cmd = 'ToggleTerm',
        --event = 'BufRead',
    }

    -- ide
    use {
        'jpalardy/vim-slime',
        opt = true,
        event = 'BufRead',
        config = "require('plugins/nv-slime')"
    }


    -- lsp
    use {
        'neovim/nvim-lspconfig',
        config = "require('plugins/lsp')",
        opt = true,
        event = "BufReadPre",
        --event = 'BufWinEnter',
    }
    use {
        'williamboman/nvim-lsp-installer',  -- simple to use language server installer
        opt = true,
        after = 'nvim-lspconfig',
        config = "require('plugins/lsp/lsp-installer')",
    }
    use {
        'hrsh7th/cmp-nvim-lsp',
        --after = 'nvim-cmp'
    }

    -- completion
    -- cmp
    use {
        'hrsh7th/nvim-cmp',  -- completion
        --event = "InsertEnter",
        config = "require('plugins/nv-cmp')",
    }
    use {
        'hrsh7th/cmp-buffer',  -- buffer completion
        --after = 'hrsh7th/nvim-cmp',
    }
    use {
        'hrsh7th/cmp-path',  -- path completion
        --after = 'hrsh7th/nvim-cmp',
    }
    use {
        'hrsh7th/cmp-cmdline',  -- cmdline completion
        --after = 'hrsh7th/nvim-cmp',
    }
    use {
        'hrsh7th/cmp-vsnip',  -- snippet
        event = 'InsertEnter',
    }
    use {
        'L3MON4D3/LuaSnip', --snippet engine
        --after = 'hrsh7th/nvim-cmp',
        --event = 'InsertLeave',
    }
    use {
        "rafamadriz/friendly-snippets", -- a bunch of snippets to use
        --after = 'hrsh7th/nvim-cmp',
        --event = 'InsertLeave',
    }
    use {
        'skywind3000/asyncrun.vim',
        config = "require('plugins/nv-asyncrun')",
        event = 'BufRead'
    }

    -- multi-cursor
    use {
        'mg979/vim-visual-multi',
        opt = true,
        event = 'BufRead',
    }


    use 'psliwka/vim-smoothie'
    use {
        'simrat39/symbols-outline.nvim',
        config = "require('plugins/nv-symbols-outline')",
    }
    use {
        'karb94/neoscroll.nvim', -- Smooth scrolling for window movement commands (mappings optional): <C-u>, <C-d>, <C-b>, <C-f>, <C-y>, <C-e>, zt, zz, zb.
    }



    if packer_bootstrap then
        require('packer').sync()
    end
end)

-- 'https://github.com/wbthomason/packer.nvim'
