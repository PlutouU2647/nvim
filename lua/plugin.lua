--'~/.local/share/nvim/site/pack/packer'
local fn = vim.fn

-- Automatically load plugins
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        'git',
        'clone',
        '--depth',
        '1',
        'https://github.com/wbthomason/packer.nvim',
        install_path})
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
    use 'wbthomason/packer.nvim'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons'},
        opt = true,
        cmd = 'NvimTreeToggle',
        config = "require('plugins/nv-nvimtree')"
    }
    use {
        'github/copilot.vim',
        event = 'BufRead',
        --event = 'insertEnter',
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        event = 'BufWinEnter',
        config = "require('plugins/nv-lualine')"
    }
    use {
        'christoomey/vim-tmux-navigator',  -- tmux-navigator
        config = "require('plugins/nv-tmux-navigator')",
        }

    use 'itchyny/vim-cursorword'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        event = 'BufWinEnter',
        config ="require('plugins/nv-treesitter')"
    }
    -- telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use {
        'nvim-lua/telescope.nvim',
        requires = {'nvim-lua/plenary'},
        opt = true,
        cmd = 'Telescope',
        config = "require('plugins/nv-telescope')"
    }
    use 'nvim-telescope/telescope-fzy-native.nvim'
    use {
        'nvim-telescope/telescope-fzf-native.nvim', run = 'make'
    }

    -- colorscheme
    use {'EdenEast/nightfox.nvim', config = "vim.cmd('colorscheme duskfox')"}  -- colorscheme
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
        requires = 'kyazdani42/nvim-web-devicons',
        event = 'BufWinEnter',
        config = "require('plugins/nv-bufferline')"
    }
    use {
        'lewis6991/gitsigns.nvim', requires = 'nvim-lua/plenary.nvim'
    }
    use {
        'glepnir/dashboard-nvim', event = 'BufWinEnter', config = "require('plugins/nv-dashboard')"
    }
    use {
        'folke/which-key.nvim',
        event = 'BufWinEnter',
        config = "require('plugins/nv-whichkey')"

    }
    use {
        'preservim/nerdcommenter', config = "require('plugins/nv-nerdcommenter')", event = 'BufRead'
    }
    --use 'mbbill/undotree'  -- undo tree
    use {
        "lukas-reineke/indent-blankline.nvim", config = "require('plugins/nv-indentline')", event = 'BufRead'
    }
    use {
        'windwp/nvim-autopairs',
        event = 'insertEnter',
        config = "require('plugins/nv-auto-pairs')"
    }
    use 'romgrk/fzy-lua-native'

    -- terminal
    use 'akinsho/toggleterm.nvim'

    -- ide
    use 'jpalardy/vim-slime'

    -- lsp
    use {
        'neovim/nvim-lspconfig',
        --after = 'nvim-cmp',
        --event = 'BufWinEnter',
    }
    use 'williamboman/nvim-lsp-installer'  -- simple to use language server installer
    use {
        'hrsh7th/cmp-nvim-lsp',
        --after = 'nvim-cmp'
    }

    -- completion
    -- cmp
    use {
        'hrsh7th/nvim-cmp',  -- completion
        --event = 'BufRead',
        config = "require('plugins/nv-cmp')",
    }
    use {
        'hrsh7th/cmp-buffer',  -- buffer completion
    }
    use {
        'hrsh7th/cmp-path',  -- path completion
    }
    use {
        'hrsh7th/cmp-cmdline',  -- cmdline completion
    }
    use {
        'hrsh7th/vim-vsnip',  -- snippet
        event = 'InsertEnter',
    }
    use {
        'hrsh7th/cmp-vsnip',  -- snippet
        event = 'InsertEnter',
    }
    use {
        'L3MON4D3/LuaSnip' --snippet engine
        --event = 'InsertLeave',
    }
    use {
        "rafamadriz/friendly-snippets" -- a bunch of snippets to use
        --event = 'InsertLeave',
    }
    use {
        'skywind3000/asyncrun.vim',
        config = "require('plugins/nv-asyncrun')",
        event = 'BufRead'
    }

    use 'mg979/vim-visual-multi'

    if packer_bootstrap then
        require('packer').sync()
    end
end)

-- 'https://github.com/wbthomason/packer.nvim'
