local execute = vim.api.nvim_command
local fn = vim.fn

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {
	    -- open_on_setup = true,
    } end
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
end)

