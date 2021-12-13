vim.g.completeopt = 'menu,menuone,noselect,noselect,noinsert'
--
local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end
-- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
      end,
    },
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      -- Accept currently selected item. If none selected, `select` first item.
      -- Set `select` to `false` to only confirm explicitly selected items.
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
      ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif vim.fn["vsnip#available"](1) == 1 then
        feedkey("<Plug>(vsnip-expand-or-jump)", "")
      elseif has_words_before() then
        cmp.complete()
      else
        fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item()
      elseif vim.fn["vsnip#jumpable"](-1) == 1 then
        feedkey("<Plug>(vsnip-jump-prev)", "")
      end
    end, { "i", "s" }),
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require'lspconfig'.html.setup {
    capabilities = capabilities
  }




-------
--vim.o.completeopt = "menuone,noselect"

--require'compe'.setup {
  --enabled = true;
  --autocomplete = true;
  --debug = false;
  --min_length = 1;
  --preselect = 'enable';
  --throttle_time = 80;
  --source_timeout = 200;
  --incomplete_delay = 400;
  --max_abbr_width = 100;
  --max_kind_width = 100;
  --max_menu_width = 100;
  --documentation = false;

  --source = {
    --path = true;
    --buffer = true;
    --calc = true;
    --vsnip = true;
    --nvim_lsp = true;
    --nvim_lua = true;
    --spell = true;
    --tags = true;
    --snippets_nvim = true;
    --treesitter = true;
  --};
--}
--local t = function(str)
  --return vim.api.nvim_replace_termcodes(str, true, true, true)
--end

--local check_back_space = function()
    --local col = vim.fn.col('.') - 1
    --if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        --return true
    --else
        --return false
    --end
--end

---- Use (s-)tab to:
----- move to prev/next item in completion menuone
----- jump to prev/next snippet's placeholder
--_G.tab_complete = function()
  --if vim.fn.pumvisible() == 1 then
    --return t "<C-n>"
  --elseif vim.fn.call("vsnip#available", {1}) == 1 then
    --return t "<Plug>(vsnip-expand-or-jump)"
  --elseif check_back_space() then
    --return t "<Tab>"
  --else
    --return vim.fn['compe#complete']()
  --end
--end
--_G.s_tab_complete = function()
  --if vim.fn.pumvisible() == 1 then
    --return t "<C-p>"
  --elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
    --return t "<Plug>(vsnip-jump-prev)"
  --else
    ---- If <S-Tab> is not working in your terminal, change it to <C-h>
    --return t "<S-Tab>"
  --end
--end

--vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
--vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
--vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
--vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
