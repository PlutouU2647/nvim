-- TODO:ignore python
vim.opt.termguicolors = true
require("bufferline").setup {
    options = {
        number = "none",
        modified_icon = "✥",
        buffer_close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 20,
        show_buffer_close_icons = true,
        show_buffer_icons = true,
        show_tab_indicators = true,
        --diagnostics = "nvim_lsp",
        always_show_bufferline = true,
        separator_style = "thin",
        offsets = {
            {
                filetype = {"NvimTree", "quickfix", "quickfix_old", "quickfix_old_old"},
                text = "File Explorer",
                --text_align = "center",
                padding = 1
            }
        }
    }
}

--vim.api.nivm_set_keymap('n', '<TAB>', ':BufferLineNext<CR>', {noremap = true, silent = true})
--vim.api.nivm_set_keymap('n', '<S-TAB>', ':BufferLinePrev<CR>', {noremap = true, silent = true})


