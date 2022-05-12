local M = {}

-- TODO: backfill this to template
M.setup = function()
    -- 设置图标


  local config = {
    -- disable virtual text
    virtual_text = false,
    -- show signs
    --signs = {
      --active = signs,
    --},
    update_in_insert = true,
    underline = true,
    severity_sort = true,
    float = {
      focusable = false,
      style = "minimal",
      border = "rounded",
      source = "always",
      header = "",
      prefix = "",
    },
  }

  vim.diagnostic.config(config)

  vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = "rounded",
  })

  vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    border = "rounded",
  })
end

local function lsp_highlight_document(client)
  -- Set autocommands conditional on server_capabilities
  if client.resolved_capabilities.document_highlight then
    vim.cmd(
      [[
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]]
    )
  end
end

local function lsp_keymaps(bufnr)
  local opts = { noremap = true, silent = true }
  --local buf_keymap = vim.api.nvim_buf_set_keymap
  local function buf_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  buf_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)

  buf_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  --buf_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  buf_keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
  --buf_keymap("n", "gp", "<cmd>Lspsaga preview_definition<CR>", opts)
  buf_keymap("n", "gp", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", opts)
  buf_keymap("n", "gP", "<cmd>lua require('goto-preview').close_all_win()<CR>", opts)


  --buf_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  --buf_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
  -- buf_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  buf_keymap("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)
  -- buf_keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
  -- buf_keymap("n", "<leader>f", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
  --buf_keymap("n", "<leader>lff", "<cmd>lua vim.lsp.buf.formatting_sync(nil,100)<CR>", opts)
  --buf_keymap( "n", "gl", '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ border = "rounded" })<CR>', opts)
  buf_keymap( "n", "gl", '<cmd>Lspsaga show_line_diagnostics<CR>', opts)
  buf_keymap("n", "]d", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts)
  buf_keymap("n", "[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts)
  buf_keymap("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
  buf_keymap("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", opts)
  buf_keymap("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", opts)
  vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
end

--M.on_attach = function(client, bufnr) if client.name == "tsserver" then
    --client.resolved_capabilities.document_formatting = false
  --end
  --lsp_keymaps(bufnr)
  --lsp_highlight_document(client)
--end
--M.on_attach = function(client, bufnr) if client.name == {"pyright", "sumneko_lua"}then
M.on_attach = function(client, bufnr)
    if client.name == "tsserver" then
        client.resolved_capabilities.document_formatting = false
        --client.resolved_capabilities.document_formatting = true
    end
    lsp_keymaps(bufnr)
    lsp_highlight_document(client)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

local status_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status_ok then
  return
end

M.capabilities = cmp_nvim_lsp.update_capabilities(capabilities)

return M
