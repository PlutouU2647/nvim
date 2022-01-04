local status_ok, config = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
    return
end

config.setup {
    ensure_installed = {"lua",'python'}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    sync_install = false,
    highlight = {
        enable = true,              -- false will disable the whole extension
        disable = {},               -- list of language that will be disabled
        additional_vim_regex_highlighting = true,  -- false will disable additional highlighting based on vim regexp
    },
indent = {
    enable = false,
    }
}
--require'nvim-treesitter.configs'.setup {
    --ensure_installed = {"lua",'python'}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    --highlight = {
        --enable = true,              -- false will disable the whole extension
        --additional_vim_regex_highlighting = true,
    --},
--}


--'https://github.com/nvim-treesitter/nvim-treesitter'
-- :TSbuffer
