require'lualine'.setup {
    options = {
        icons_enabled = true,
        theme = 'dracula',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        --component_separators = "|",
        disabled_filetypes = {},
        always_divide_middle = true,
        --theme = "nightfox"
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch',{'diagnostics', sources={'nvim_diagnostic', 'coc'}}},
                      --{'diagnostics', sources={'nvim_lsp', 'coc'}}},
        --lualine_c = {"lsp_progress"},
        lualine_c = {"filename","lsp_progress"},
        lualine_x = {'encoding', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    --inactive_sections = {
    --lualine_a = {'mode'},
    --lualine_b = {'filetype'},
    --lualine_c = {'filename'},
    --lualine_x = {},
    --lualine_y = {},
    --lualine_z = {'location'}
    --},
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {"filename"},
        lualine_x = {"location"},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = {
        --"quickfix",
        "nvim-tree",
        "toggleterm",
        --"fugitive",
        --"symbols_outline"
    }
}
