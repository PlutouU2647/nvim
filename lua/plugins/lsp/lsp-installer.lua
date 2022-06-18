local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
    return
end

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

local servers = {
    "jsonls",
    "sumneko_lua",
    "jedi_language_server"
}

lsp_installer.setup {
	ensure_installed = servers
}

for _, server in pairs(servers) do
	local opts = {
        on_attach = require("plugins.lsp.handlers").on_attach,
        capabilities = require("plugins.lsp.handlers").capabilities,
	}
	local has_custom_opts, server_custom_opts = pcall(require, "user.lsp.settings." .. server)
	if has_custom_opts then
	 	opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
	end
	lspconfig[server].setup(opts)
end



lsp_installer.settings({
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

--local DEFAULT_SETTINGS = {
    --ui = {
        --icons = {
            ---- The list icon to use for installed servers.
            --server_installed = "◍",
            ---- The list icon to use for servers that are pending installation.
            --server_pending = "◍",
            ---- The list icon to use for servers that are not installed.
            --server_uninstalled = "◍",
        --},
        --keymaps = {
            ---- Keymap to expand a server in the UI
            --toggle_server_expand = "<CR>",
            ---- Keymap to install a server
            --install_server = "i",
            ---- Keymap to reinstall/update a server
            --update_server = "u",
            ---- Keymap to uninstall a server
            --uninstall_server = "X",
        --},
    --},

    ---- The directory in which to install all servers.
    --install_root_dir = vim.fn.stdpath "data", "lsp_servers", 

    --pip = {
        ---- These args will be added to `pip install` calls. Note that setting extra args might impact intended behavior
        ---- and is not recommended.
        ----
        ---- Example: { "--proxy", "https://proxyserver" }
        --install_args = {},
    --},

    ---- Controls to which degree logs are written to the log file. It's useful to set this to vim.log.levels.DEBUG when
    ---- debugging issues with server installations.
    --log_level = vim.log.levels.INFO,

    ---- Limit for the maximum amount of servers to be installed at the same time. Once this limit is reached, any further
    ---- servers that are requested to be installed will be put in a queue.
    --max_concurrent_installers = 4,
--}

--'https://github.com/williamboman/nvim-lsp-installer'
-- key bindings
-- u: update
-- i: install
-- ui: update and install
-- I: install all
-- X: uninstall
