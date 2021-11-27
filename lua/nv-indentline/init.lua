vim.g.indent_blankline_context_highlight_list = {'Error', 'Warning'}
vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]
require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    space_char_blankline = " ",
    buftype_exclude = {'terminal'},
    filetype_exclude = {'dashboard','NvimTree','packer'},
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
    show_current_context = true,
    show_current_context_line = true,
    context_patterns = {
        "class", "return", "function", "method", "^if", "^while", "jsx_element", "^for", "^object", "^table", "block", "arguments", "if_statement",
        "else_clause", "jsx_element", "jsx_self_closing_element", "try_statement", "catch_clause", "import_statement", "operation_type"
    }
}



