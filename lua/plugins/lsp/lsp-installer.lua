local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
    return
end

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
    local opts = {
        on_attach = require("plugins.lsp.handlers").on_attach,
        capabilities = require("plugins.lsp.handlers").capabilities,
    }

     --if server.name == "jsonls" then
         --local jsonls_opts = require("plugins.lsp.settings.jsonls")
         --opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
     --end

     if server.name == "sumneko_lua" then
         local sumneko_opts = require("plugins.lsp.settings.sumneko_lua")
         opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
     end

     if server.name == "pyright" then
         local pyright_opts = require("plugins.lsp.settings.pyright")
         opts = vim.tbl_deep_extend("force", pyright_opts, opts)
     end
    -- This setup() function is exactly the same as lspconfig's setup function.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)


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
