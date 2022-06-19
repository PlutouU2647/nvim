local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
	return
end

indent_blankline.setup({
    space_char_blankline = " ",
    char = "│",
    show_first_indent_level = true,
    use_treesitter = true,
    trailing_blankline_indent = false,
    first_indent_level = true,
    current_context = true,
    filetype_exclude = {
        "startify", "dashboard", "dotooagenda", "log", "fugitive",
        "gitcommit", "packer", "vimwiki", "markdown", "json", "txt",
        "vista", "help", "todoist", "NvimTree", "peekaboo", "git",
        "TelescopePrompt", "undotree", "flutterToolsOutline", "" -- for all buffers without a file type
    },
    buftype_exclude = {"terminal", "nofile"},
    show_trailing_blankline_indent = false,
    show_current_context = true,
    context_patterns = {
        "return",
        "method",
        "^while",
        "^for",
        "^object",
        "block",
        "arguments",
        "else_clause",
        "jsx_element",
        "jsx_self_closing_element",
        "try_statement",
        "catch_clause",
        "import_statement",
        "operation_type",
        "class",
        "function",
        "list_literal",
        "selector",
        "^if",
        "^table",
        "if_statement",
        "while",
        "for",
        "type",
        "import",
        "var",
    },
})

