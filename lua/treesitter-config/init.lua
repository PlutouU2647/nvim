require'nvim-treesitter.configs'.setup {
  ensure_installed = 'lua',
  highlight = {
    enable = true,              -- false will disable the whole extension
    additional_vim_regex_highlighting = false,
  },
}
