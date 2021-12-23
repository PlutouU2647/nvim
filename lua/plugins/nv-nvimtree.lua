local g = vim.g

g.nvim_tree_add_trailing = 0 -- append a trailing slash to folder names
g.nvim_tree_git_hl = 0
g.nvim_tree_highlight_opened_files = 0
g.nvim_tree_indent_markers = 1
g.nvim_tree_quit_on_open = 0 -- closes tree when file's opened
g.nvim_tree_root_folder_modifier = table.concat { ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" }

g.nvim_tree_window_picker_exclude = {
   filetype = { "notify", "packer", "qf" },
   buftype = { "terminal" },
}

g.nvim_tree_show_icons = {
   folders = 1,
   files = 1,
   git = 1,
}

g.nvim_tree_icons = {
   default = "",
   symlink = "",
   git = {
      deleted = "",
      ignored = "◌",
      renamed = "➜",
      staged = "✓",
      unmerged = "",
      unstaged = "✗",
      untracked = "★",
   },
   folder = {
      default = "",
      empty = "",
      empty_open = "",
      open = "",
      symlink = "",
      symlink_open = "",
   },
}
require'nvim-tree'.setup {
   filters = {
      dotfiles = false,
   },
   disable_netrw = true,
   hijack_netrw = true,
   ignore_ft_on_setup = { "dashboard" },
   auto_close = true,
   open_on_tab = false,
   hijack_cursor = true,
   update_cwd = true,
   update_focused_file = {
      enable = true,
      update_cwd = false,
   },
   view = ui,
   git = {
      ignore = false,
   },
}
-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
----------
--vim.g.nvim_tree_indent_markers = 1 
--require'nvim-tree'.setup {
    --auto_close = 1,
    --auto_open = 1,
    ----gitignore = 1,
--}
--vim.g.nvim_tree_icons = {
   --default = "",
   --symlink = "",
   --git = {
      --deleted = "",
      --ignored = "◌",
      --renamed = "➜",
      --staged = "✓",
      --unmerged = "", unstaged = "✗",
      --untracked = "★",
   --},
   --folder = {
      --default = "",
      --empty = "",
      --empty_open = "",
      --open = "",
      --symlink = "",
      --symlink_open = "",
   --},
--}



----------
--vim.g.nvim_tree_width = 25
-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
--local tree_cb = require'nvim-tree.config'.nvim_tree_callback
--vim.g.nvim_tree_bindings = {
    -- mappings
    --["<CR>"]      = tree_cb('edit'),
    --["o"]         = tree_cb('edit'),
    --["<C-]>"]     = tree_cb('edit'),
    --["<C-]>"]     = tree_cb('edit'),
    --["<C-v>"]     = tree_cb("vsplit"),
    --["<C-x>"]     = tree_cb("split"),
    --["<C-t>"]     = tree_cb("tabnew"),
    --["<"]         = tree_cb("prev_sibling"),
    --[">"]         = tree_cb("next_sibling"),
    --["P"]         = tree_cb("parent_node"),
    --["<BS>"]      = tree_cb("close_node"),
    --["<S-CR>"]    = tree_cb("close_node"),
    --["<Tab>"]     = tree_cb("preview"),
    --["K"]         = tree_cb("first_sibling"),
    --["J"]         = tree_cb("last_sibling"),
    --["I"]         = tree_cb("toggle_ignored"),
    --["H"]         = tree_cb("toggle_dotfiles"),
    --["R"]         = tree_cb("refresh"),
    --["a"]         = tree_cb("create"),
    --["d"]         = tree_cb("remove"),
    --["r"]         = tree_cb("rename"),
    --["<C-r>"]     = tree_cb("full_rename"),
    --["x"]         = tree_cb("cut"),
    --["c"]         = tree_cb("copy"),
    --["p"]         = tree_cb("paste"),
    --["y"]         = tree_cb("copy_name"),
    --["Y"]         = tree_cb("copy_path"),
    --["gy"]        = tree_cb("copy_absolute_path"),
    --["[c"]        = tree_cb("prev_git_item"),
    --["]c"]        = tree_cb("next_git_item"),
    --["-"]         = tree_cb("dir_up"),
    --["s"]         = tree_cb("system_open"),
    --["q"]         = tree_cb("close"),
    --["g?"]        = tree_cb("toggle_help")
--}

-- config
--require'nvim-tree'.setup {
    --auto_close = 1,
    --gitignore = 1,
--}
-- 'https://github.com/kyazdani42/nvim-tree.lua'
-- help 
-- 'https://github.com/kyazdani42/nvim-tree.lua'
-- help 
