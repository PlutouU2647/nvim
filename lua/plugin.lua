--'~/.local/share/nvim/site/pack/packer'

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
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
    use 'christoomey/vim-tmux-navigator'  -- tmux-navigator
    use 'itchyny/vim-cursorword' use 'shaunsingh/nord.nvim'  -- colorscheme
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
        cmd = 'Telescope',
        config = "require('plugins/nv-telescope')"
    }
    use 'nvim-telescope/telescope-fzy-native.nvim'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- colorscheme
    use {'EdenEast/nightfox.nvim', config = "vim.cmd('colorscheme duskfox')"}  -- colorscheme
    --use({
    --'rose-pine/neovim',
    ----as = 'rose-pine',
    --tag = 'v0.1.0', -- Optional tag release
    --})  -- rose-pine
    
    use {'norcalli/nvim-colorizer.lua', event = 'BufRead', config = "require('plugins/nv-colorizer')"}  -- colorizer
    use 'unblevable/quick-scope'
    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        event = 'BufWinEnter',
        config = "require('plugins/nv-bufferline')"
    }
    use {'lewis6991/gitsigns.nvim', requires = 'nvim-lua/plenary.nvim'}
    use {'glepnir/dashboard-nvim', event = 'BufWinEnter', config = "require('plugins/nv-dashboard')"}
    use {
        'folke/which-key.nvim',
        event = 'BufWinEnter',
        config = "require('plugins/nv-whichkey')"

    }
    use {'preservim/nerdcommenter', config = "require('plugins/nv-nerdcommenter')", event = 'BufRead'}
    --use 'mbbill/undotree'  -- undo tree
    use {"lukas-reineke/indent-blankline.nvim", config = "require('plugins/nv-indentline')", event = 'BufRead'}
    use {
        'windwp/nvim-autopairs', 
        event = 'insertEnter', 
        config = "require('plugins/nv-auto-pairs')"
    }
    --use 'gelguy/wilder.nvim'
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
        config = "require('plugins/nv-lsp')"
    }
    use {
        'hrsh7th/cmp-nvim-lsp',
        --after = 'nvim-cmp'
    }

    -- completion
    use {
        'hrsh7th/nvim-cmp',
        --event = 'BufRead',
        config = "require('plugins/nv-cmp')",
    }
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}
    use {'hrsh7th/vim-vsnip', event = 'InsertEnter'}
    use {'hrsh7th/cmp-vsnip', event = 'InsertEnter'} 

    -- chinese
    use {'lyokha/vim-xkbswitch'}
    use {'skywind3000/asyncrun.vim', config = "require('plugins/nv-asyncrun')", event = 'BufRead'}

    if packer_bootstrap then
        require('packer').sync()
    end
end)

-- 'https://github.com/wbthomason/packer.nvim'
