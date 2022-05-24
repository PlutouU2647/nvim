local cmp_status_ok, cmp = pcall(require, 'cmp')
if not cmp_status_ok then
  return
end

local snippet_status_ok, luasnip = pcall(require, 'luasnip')
if not snippet_status_ok then
  return
end
--local u = require("utils")

local check_backspace = function()
  local col = vim.fn.col "." - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

require('luasnip/loaders/from_vscode').lazy_load()

--   פּ ﯟ   some other good icons
local kind_icons = {
  Text = "",
  Method = "m",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  Path = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
}
-- find more here: https://www.nerdfonts.com/cheat-sheet


cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  mapping = {
    --["<C-k>"] = cmp.mapping.select_prev_item(),
    --["<C-j>"] = cmp.mapping.select_next_item(),
    ["<C-p>"] = cmp.mapping(cmp.mapping.select_prev_item(), {"i"}),
    ["<C-n>"] = cmp.mapping(cmp.mapping.select_next_item(), {"i"}),
    ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
    ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    ["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ["<C-e>"] = cmp.mapping {
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    },
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
    --["<Tab>"] = function(fallback)
        --if cmp.visible() then
            --cmp.select_next_item()
        ----elseif vim.fn["vsnip#available"](1) > 0 then
            ----vim.fn.feedkeys('<Plug>(vsnip-expand-or-jump)', '')
            ----u.input("<Plug>(vsnip-expand-or-jump)")
        --else
            --local copilot_keys = vim.fn["copilot#Accept"]()
            --if copilot_keys ~= "" then
                --vim.api.nvim_feedkeys(copilot_keys, "i", true)
            --else
                --fallback()
            --end
        --end
    --end,
      --['<S-tab>'] = cmp.mapping(function (fallback)
        --local luasnip = require('luasnip')
        --if cmp.visible() then
          --cmp.select_prev_item()
        --elseif luasnip and luasnip.jumpable(-1) then
          --luasnip.jump(-1)
        --else
          --fallback()
        --end
      --end, { 'i', 's', 'c' })
     --["<Tab>"] = cmp.mapping(function(fallback)
      --if cmp.visible() then
        --cmp.select_next_item()
      --elseif luasnip.expandable() then
        --luasnip.expand()
      --elseif luasnip.expand_or_jumpable() then
        --luasnip.expand_or_jump()
      --elseif check_backspace() then
        --fallback()
      --else
        --fallback()
      --end
    --end, {
      --"i",
      --"s",
    --}),

},

  -- cmp补全窗口的配置
  formatting = {
    fields = { "abbr", "kind", "menu" },
    format = function(entry, vim_item)
      -- Kind icons
      vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
      -- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
      vim_item.menu = ({
        nvim_lsp    = "[LSP]",
        luasnip     = "[Luasnip]",
        buffer      = "[Buf]",
        path        = "[Path]",
        vsnip       = "[Vsnip]",
        cmp_tabnine = "[Ai]",
        ultisnips   = "[UTsnip]"
      })[entry.source.name]
      return vim_item
    end,
  },
  sources = {
      -- 安装好的插件放在这里
    { name = "nvim_lsp" },
    { name = 'cmp_tabnine' },
    { name = "luasnip" },
    { name = "buffer", keyword_lenth = 5 },
    { name = "ultisnips" },
    { name = "path" },
  },
  confirm_opts = {
    behavior = cmp.ConfirmBehavior.Replace,
    select = false,
  },
  experimental = {
    ghost_text = false,
    native_menu = false,
  },
  -- documentation = true,
  window = {
    -- documentation = "native",
    documentation = {
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
      winhighlight = "NormalFloat:Pmenu,NormalFloat:Pmenu,CursorLine:PmenuSel,Search:None",
    },
    completion = {
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
      winhighlight = "NormalFloat:Pmenu,NormalFloat:Pmenu,CursorLine:PmenuSel,Search:None",
    }
    }
}



-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
    --mapping = cmp.mapping.preset.cmdline(),
    mapping = {
        ['<TAB>']   = cmp.mapping(cmp.mapping.select_next_item(), {"c", "s"}),
        ['<S-TAB>'] = cmp.mapping(cmp.mapping.select_prev_item(), {"c", "s"}),
        ['C-p']     = cmp.mapping.close(),
    },
    sources = {
      { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = {
        ['<TAB>']   = cmp.mapping(cmp.mapping.select_next_item(), {"c", "s"}),
        ['<S-TAB>'] = cmp.mapping(cmp.mapping.select_prev_item(), {"c", "s"}),
        ['C-p']     = cmp.mapping.close(),
    },

    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
})
