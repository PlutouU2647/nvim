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

-- 在首次配置packer第一次启动不会报错
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

vim.cmd [[
  augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugin.lua source <afile> | PackerCompile
  augroup end
]]

--[[
指定某个
use {
    "wbthomason/packer.nvim",  -- 插件名称
    config = "require('filepath')",  -- 配置文件
    branch = "master",  -- 分支
    commit = ""  -- 指定某个commit


},
--]]


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


    -- file manager
    use {
        'kyazdani42/nvim-tree.lua',
        --opt = true,
        --cmd = {"NvimTreeToggle", "NvimTreeOpen"},
        config = "require('plugins/nv-nvimtree')"
        --config = con"require('plugins/nv-nvimtree')"
    }

    use {
        'nvim-lualine/lualine.nvim',
        opt = true,
        --event = 'BufRead',
        event = 'BufWinEnter',
        config = "require('plugins/nv-lualine')"
    }
    use {
        'christoomey/vim-tmux-navigator',  -- tmux-navigator
        config = "require('plugins/nv-tmux-navigator')",
    }

    use {
        'itchyny/vim-cursorword',
        opt = true,
        event = {"BufReadPre", "BufNewFile"},
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        --opt = true,
        --event = {"BufReadPre", "BufNewFile", "BufWinEnter"},
        --event = "BufWinEnter",
        run = ':TSUpdate',
        config ="require('plugins/nv-treesitter')"
    }
    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        opt = true,
        cmd = 'Telescope',
        event = {"BufReadPre", "BufNewFile", "BufWinEnter"},
        config = "require('plugins/nv-telescope')"
    }
    use {
        'ahmedkhalf/project.nvim',
        --opt = true,
        --opt = true,
        --after = "telescope.nvim"
        --after = 'nvim-telescope/telescope.nvim',
    }
    use {
        'fhill2/telescope-ultisnips.nvim'
    }
    use {
        'nvim-telescope/telescope-packer.nvim',
        --opt = true,
        --keys = { '<leader>t' },
        --cmd = 'Telescope packer',
    }
    --use {
        --'kien/ctrlp.vim'
    --}
    use {
        'renerocksai/telekasten.nvim',
        opt = true,
        ft = {'markdown', 'wiki' },
        config = "require('plugins/nv-telekasten')"

    }
    -- colorscheme
    --use {
        --"sonph/onehalf",
        --subdir = "vim",
        --config = "require('plugins/theme-onehalf')"
    --}

    use {
        'EdenEast/nightfox.nvim',  -- colorscheme
         config = "require('plugins/theme-nightfox')",
    }
    --use {
        --'folke/tokyonight.nvim'
    --}
    --use {
        --'navarasu/onedark.nvim',
        --config = "require('plugins/theme-onedark')",
    --}
    --use {
        --'Mofiqul/dracula.nvim',
        --config = "require('plugins/theme-dracula')",
    --}


    --use({
    --'rose-pine/neovim',
    ----as = 'rose-pine',
    --tag = 'v0.1.0', -- Optional tag release
    --})  -- rose-pine

    use {
        'norcalli/nvim-colorizer.lua',  -- colorizer
        event = {"BufRead", "BufNewFile"},
        config = "require('plugins/nv-colorizer')"
    }
    use {
        'akinsho/bufferline.nvim',
        --opt = true,
        --event = "BufRead",
        event = "BufWinEnter",
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
        --opt = true,
        --keys = "<leader>",
        config = "require('plugins/nv-whichkey')"

    }
    use {
        'preservim/nerdcommenter',
        config = "require('plugins/nv-nerdcommenter')",
        event = 'BufRead'
    }
    --use 'mbbill/undotree'  -- undo tree
    use {
        "lukas-reineke/indent-blankline.nvim",
        opt = true,
        --event = 'BufRead',
        event = {"BufReadPre", "BufNewFile"},
        config = "require('plugins/nv-indentline')",
    }
    use {
        'windwp/nvim-autopairs',
        event = 'insertEnter',
        config = "require('plugins/nv-auto-pairs')"
    }
    --use 'romgrk/fzy-lua-native'

    -- terminal
    use {
        'akinsho/toggleterm.nvim',
        --opt = true,
        --cmd = 'ToggleTerm',
        --event = 'BufRead',
        config = "require('plugins/nv-toggleterm')"
    }

    --=========================
    -- ide
    --=========================
    --use {
        --'github/copilot.vim',
        --event = {"BufReadPre", "BufNewFile"},
        --opt = true,
        ----commit = "47eb231",
        --require = "plugins/nv-copilot",

    --}
    use {
        'CRAG666/code_runner.nvim',
        opt = true,
        config = "require('plugins/nv-code-runner')",
        ft = 'python',
    }
    use {
        'jpalardy/vim-slime',
        opt = true,
        ft = 'python',
        event = 'TermOpen',
        config = "require('plugins/nv-slime')",
        keys = { '<Plug>SlimeConfig'},
        cmd = {'IPythonCellExecuteCellJump', 'IPythonCellExecuteCell' },
    }
    use {
        'hanschen/vim-ipython-cell',
        opt = true,
        ft = 'python',  -- set filetype only strat out when python file is opened
        event = 'TermOpen',
        cmd = {'IPythonCellExecuteCellJump', 'IPythonCellExecuteCell' },
        config = "require('plugins/nv-ipython-cell')",
        after = 'vim-slime',
    }
    --use {
        --'skywind3000/asyncrun.vim',
        --opt = true,
        --config = "require('plugins/nv-asyncrun')",
        --ft = 'python',
    --}
    --=========================
    -- ide end
    --=========================

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
        event = "BufReadPre",
        config = "require('plugins/lsp/lsp-installer')",
    }
    use {
        'hrsh7th/cmp-nvim-lsp',
        --after = 'nvim-cmp'
    }
    use {
        'tami5/lspsaga.nvim',
        opt = true,
        event = "BufReadPre",
        config = "require('plugins/nv-lspsaga')",
    }
    use {
        'ray-x/lsp_signature.nvim',
        event = 'InsertEnter',
        config = "require('plugins/nv-lspsignature')",
    }

    --=========================
    --cmp-start
    --=========================
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
        'tzachar/cmp-tabnine',
        opt = true,
        run='./install.sh',
        event = {"BufReadPre", "BufNewFile"},
    }
    use {
        "quangnguyen30192/cmp-nvim-ultisnips"
    }
    use {
        'hrsh7th/cmp-vsnip',  -- snippet
        event = 'InsertEnter',
        config = "require('plugins/nv-vsnip')",
    }
    use {
        'L3MON4D3/LuaSnip', --snippet engine
        --after = 'hrsh7th/nvim-cmp',
        --event = 'InsertLeave',
        config = "require('plugins/nv-luasnip')",
    }
    --use {
        --"rafamadriz/friendly-snippets", -- a bunch of snippets to use
        --after = 'hrsh7th/nvim-cmp',
        --event = 'InsertLeave',
    --}
    --=========================
    --cmp-end
    --=========================

    -- multi-cursor
    use {
        'mg979/vim-visual-multi',
        opt = true,
        event = {"BufReadPre", "BufNewFile"},
        config = "require('plugins/nv-visualmulti')",
    }
    use {
        'simrat39/symbols-outline.nvim',
        config = "require('plugins/nv-symbols-outline')",
        event = {"BufReadPre", "BufNewFile"},
        ft = {'python','lua'},  -- set filetype only strat out when python file is opened
    }
    --use {
        --'karb94/neoscroll.nvim', -- Smooth scrolling for window movement commands (mappings optional): <C-u>, <C-d>, <C-b>, <C-f>, <C-y>, <C-e>, zt, zz, zb.
        --event = {"BufReadPre", "BufNewFile"},
        --opt = true,
    --}
    use {
        'dstein64/vim-startuptime',
        opt = true,
        cmd = "StartupTime",
    }
    use {
        'ybian/smartim',
        --opt = true,
        --event = 'InsertEnter',
        config = "require('plugins/nv-smartim')",
    }
    use {
        'lervag/vimtex',
        opt = true,
        ft = {"plaintex", "tex", "latex", "markdown", "vimwiki"}
    }
    use {
        'SirVer/ultisnips',
        config = "require('plugins/nv-ultisnips')",

    }
    use {
        'rmagatti/goto-preview',
        opt = true,
        --event = {"BufReadPre", "BufNewFile"},
        config = "require('plugins/nv-goto-preview')",
        ft = 'python',
    }
    use {
        'godlygeek/tabular',
        opt = true,
        cmd = {'Tabularize'},
	    ft = "markdown",
    }
    use {
        'sigma2647/goyo.vim',
        opt = true,
	    ft = "markdown",
        cmd = "Goyo",
    }
    use {
        'plasticboy/vim-markdown',
        opt = true,
        ft = {"markdown", "vimwiki"},
        config = "require('plugins/nv-markdown')",
    }
    use {
        'iamcco/markdown-preview.nvim',
        opt = true,
        ft = {'markdown', 'vimwiki'},
        run = "cd app && yarn install",
        --cmd = "MarkdownPreview",
        config = "require('plugins/nv-markdown-preview')",
    }
    use {
        'vimwiki/vimwiki',
        config = "require('plugins/nv-vimwiki')",
        branch = 'dev',
        --ft = {'markdown', 'vimwiki'},
    }
    --use {
        --'plasticboy/vim-markdown'
    --}
    use {
        'rcarriga/nvim-notify',
        config = "require('plugins/nv-notify')"
    }
    use {
        "christianchiarulli/nvim-gps",
        branch = "text_hl",
        --config = "require('plugins/nv-gps')"
    }



    if packer_bootstrap then
        require('packer').sync()
    end
end)

--[[
https://github.com/wbthomason/packer.nvim
--]]
