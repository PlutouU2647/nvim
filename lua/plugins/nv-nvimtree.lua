-- TODO:understanding the keybindings
local g = vim.g
local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
    return
end
local tree_cb = nvim_tree_config.nvim_tree_callback


--g.nvim_tree_respect_buf_cwd = 1  -- for projects plugin

--g.nvim_tree_add_trailing = 0 -- append a trailing slash to folder names
--g.nvim_tree_git_hl = 0
--g.nvim_tree_highlight_opened_files = 0
--g.nvim_tree_indent_markers = 1
--g.nvim_tree_quit_on_open = 0 -- closes tree when file's opened
--g.nvim_tree_root_folder_modifier = table.concat { ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" }


nvim_tree.setup {
    filters = {
        dotfiles = false,
    },
    disable_netrw = true,
    hijack_netrw = true,
    ignore_ft_on_setup = { "dashboard" },
    --auto_close = true,
    open_on_tab = false,
    hijack_cursor = true,
    update_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
    git = {
        ignore = false,
    },
    actions = {
        change_dir = {
            enable = false,
            global = false,
        },
        open_file = {
            quit_on_open = false,
            resize_window = false,
            window_picker = {
                enable = true,
                chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
                exclude = {
                    filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame", },
                    buftype  = { "nofile", "terminal", "help", },
                }
            }
        }
    },
    renderer = {
        icons = {
            webdev_colors = true,
            git_placement = "before",
            padding = " ",
            symlink_arrow = " ➛ ",
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
            glyphs = {
                default = "",
                symlink = "",
                folder = {
                    --arrow_closed = "",
                    --arrow_open = "",
                    arrow_closed = "",
                    arrow_open = "",
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                    symlink_open = "",
                },
                git = {
                    deleted = "",
                    ignored = "◌",
                    renamed = "➜",
                    staged = "✓",
                    unmerged = "",
                    unstaged = "✗",
                    untracked = "U",
                    --untracked = "★",
                },
            }
        }
    }
}

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
    --["<S-CR>"]    = tree_cb("close_node"), ["<Tab>"]     = tree_cb("preview"),
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
-- help
-- 'https://github.com/kyazdani42/nvim-tree.lua'
-- 'https://github.com/LunarVim/Neovim-from-scratch/blob/1d14e44126b153943abc8559e3c2a8ccce9fe931/lua/user/nvim-tree.lua'
