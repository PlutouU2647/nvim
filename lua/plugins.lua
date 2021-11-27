return require('packer').startup(function()
    -- Packer can manage itself
    use 'glepnir/nvim-lua-guide-zh'
    use 'wbthomason/packer.nvim'
    use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function() require'nvim-tree'.setup {} end
    }
    use 'github/copilot.vim'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    use {'nvim-lualine/lualine.nvim',requires = {'kyazdani42/nvim-web-devicons', opt = true}}
    use 'EdenEast/nightfox.nvim'  -- colorscheme
    use 'christoomey/vim-tmux-navigator'  -- tmux-navigator
    use 'itchyny/vim-cursorword'
    use 'shaunsingh/nord.nvim'  -- colorscheme
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    -- snippets
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/telescope.nvim'
    use 'ChristianChiarulli/nvcode-color-schemes.vim'
    use 'norcalli/nvim-colorizer.lua'  -- colorizer
    use 'unblevable/quick-scope'
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    use {'lewis6991/gitsigns.nvim', requires = 'nvim-lua/plenary.nvim'}
    use 'sainnhe/edge'  --eva colorscheme
    use 'glepnir/dashboard-nvim'
    use 'folke/which-key.nvim'
    use 'preservim/nerdcommenter'
end)
