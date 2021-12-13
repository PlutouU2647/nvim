--'~/.local/share/nvim/site/pack/packer'

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup({function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function() require'nvim-tree'.setup {} end
    }
    use 'github/copilot.vim'
    use {'nvim-lualine/lualine.nvim',requires = {'kyazdani42/nvim-web-devicons', opt = true}}
    use 'christoomey/vim-tmux-navigator'  -- tmux-navigator
    use 'itchyny/vim-cursorword' use 'shaunsingh/nord.nvim'  -- colorscheme
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    -- telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/telescope.nvim'
    use 'nvim-telescope/telescope-fzy-native.nvim'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- colorscheme
    use 'EdenEast/nightfox.nvim'  -- colorscheme
    --use({
    --'rose-pine/neovim',
    ----as = 'rose-pine',
    --tag = 'v0.1.0', -- Optional tag release
    --})  -- rose-pine
    
    use 'ChristianChiarulli/nvcode-color-schemes.vim'
    use 'norcalli/nvim-colorizer.lua'  -- colorizer
    use 'unblevable/quick-scope'
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    use {'lewis6991/gitsigns.nvim', requires = 'nvim-lua/plenary.nvim'}
    use 'sainnhe/edge'  --eva colorscheme
    use 'glepnir/dashboard-nvim'
    use 'folke/which-key.nvim'
    use 'preservim/nerdcommenter'
    use 'mbbill/undotree'  -- undo tree
    use "lukas-reineke/indent-blankline.nvim"
    use 'mfussenegger/nvim-dap'
    use 'jiangmiao/auto-pairs'
    use 'gelguy/wilder.nvim'
    use 'romgrk/fzy-lua-native'
    -- terminal
    use 'akinsho/toggleterm.nvim'

    -- ide
    use 'jpalardy/vim-slime'
    use {'neovim/nvim-lspconfig'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}
    use {'hrsh7th/nvim-cmp'}
    use {'hrsh7th/vim-vsnip'}
    use {'hrsh7th/cmp-vsnip'}


    if packer_bootstrap then
        require('packer').sync()
    end
end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}})


-- 'https://github.com/wbthomason/packer.nvim'
