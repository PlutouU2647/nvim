require'nvim-treesitter.configs'.setup {
    ensure_installed = {"lua",'python'}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    highlight = {
        enable = true,              -- false will disable the whole extension
        additional_vim_regex_highlighting = false,
    },
}


--'https://github.com/nvim-treesitter/nvim-treesitter'
-- :TSbuffer
