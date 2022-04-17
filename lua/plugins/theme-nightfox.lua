--[[
https://github.com/EdenEast/nightfox.nvim
--]]
-- Palettes are the base color defines of a colorscheme.
-- You can override these palettes for each colorscheme defined by nightfox
local palettes = {
  nightfox = {
    -- Each palette defines these colors:
    --   black, red, green, yellow, blue, magenta, cyan, white, orange, pink
    --
    -- These colors have 3 shades: base, bright, and dim
    --
    -- Defining just a color defines it's base color
    --
    --red = "#c94f6d",
    --green = "#fee081",
    -- background
    --bg1 = "#27253e",

  },
  dayfox = {
    -- Defining multiple shades is done by passing a table
    blue = { base = "#4d688e", bright = "#4e75aa", dim = "#485e7d", }
  },
  nordfox = {
    -- A palette also defines the following:
    --   bg0, bg1, bg2, bg3, bg4, fg0, fg1, fg2, fg3, sel0, sel1, comment
    --
    -- These are the different foreground and background shades used by the theme.
    -- The base bg and fg is 1, 0 is normally the dark alternative. The others are
    -- incrementally lighter versions.
    --bg1 = "#2e3440",

    bg1 = "#27253e",
    bg2 = "#27253e",
    -- sel is different types of selection colors.
    sel0 = "#27253e", -- Popup bg, visual selection bg
    sel1 = "#27253e", -- Popup sel bg, search bg

    -- comment is the definition of the comment color.
    comment = "#60728a",
  }
}

-- Spec's (specifications) are a mapping of palettes to logical groups that will be
-- used by the groups. Some examples of the groups that specs map would be:
--   - syntax groups (functions, types, keywords, ...)
--   - diagnostic groups (error, warning, info, hints)
--   - git groups (add, removed, changed)
--
-- You can override these just like palettes
local specs = {
  nightfox = {
    syntax = {
      -- Specs allow you to define a value using either a color or template. If the string does
      -- start with `#` the string will be used as the path of the palette table. Defining just
      -- a color uses the base version of that color.
      keyword = "magenta",

      -- Adding either `.bright` or `.dim` will change the value
      conditional = "magenta.bright",
      number = "orange.dim",
    },
    git = {
      -- A color define can also be used
      changed = "#f4a261",
    }
  }
}


-- Groups are the highlight group definitions. The keys of this table are the name of the highlight
-- groups that will be overridden. The value is a table with the following values:
--   - fg, bg, style, sp, link,
--
-- Just like `spec` groups support templates. This time the template is based on a spec object.
local groups = {
  -- By default nightfox links some groups together. `CursorColumn` is one of these groups. When overriding
  -- Make sure `link` is cleared to `""` so that the link will be removed.
  CursorColumn = { bg = "sel0", link = "" },

  -- Specs are used for the template. Specs have their palette's as a field that can be accessed
  IncSearch = { bg = "palette.cyan" },
}

--require("nightfox").setup({ palettes = palettes, specs = specs, groups = groups })
require("nightfox").setup({
    options = {
        style = {
            comments = "italic",
            --numbers = "italic",
            number = "orange.dim",
        },
    },
    palettes = {
        -- black, red, green, yellow, blue, magenta, cyan, white, orange, pink
        duskfox = {
            orange = "#e29c45",  -- 数字1,2,3,4,
            white = "f3f9f1",  -- 白色字体
            cyan = "#ff8936",  -- 传参(arg)
            red = "#cd83e1",  -- functions & def
            --white = "#f3f9f1",  -- 白色字体
            --black = "#2e3440",
            --green = "#98c378", -- 字符串
            --yellow = "red", -- 注释
            --blue = "#177cb0",
            --blue = "#6cb8f1",
            --blue = "red",
            ----magenta = "#815476",  -- 返回
            --magenta = "blue",  -- 返回return
            --pink = "black",
            --white = "#f3f9f1",  -- 白色字体

            ----

            sel1 = "#27253e", -- Popup sel bg, search bg
            --bg1 = "#27253e",  -- 背景
            --bg1 = "#282c34",
            ----bg1 = "#2d323b",
            --comment = "#4A4946",
        }
        --nordfox = {
            --black = "#2e3440",
            --red = "#cd83e1",  -- functions & def
            --green = "#98c378", -- 字符串
            ----yellow = "red", -- 注释
            ----blue = "#177cb0",
            --blue = "#6cb8f1",
            ----blue = "red",
            ----magenta = "#815476",  -- 返回
            --magenta = "blue",  -- 返回return
            --cyan = "#ff8936",  -- 传参
            --pink = "black",
            --orange = "#e29c45",  -- 数字
            ----white = "#f3f9f1",  -- 白色字体
            --white = "f3f9f1",  -- 白色字体

            ----

            --bg1 = "#27253e",  -- 背景
            ----bg1 = "#282c34",
            ----bg1 = "#2d323b",
            --comment = "#4A4946",
        --}
    },
    -- hello
    groups = {
        --CursorColumn = { bg = "sel0", link = "" },
        CursorColumn = { bg = "sel0", link = "" },
        TSField = { fg = "palette.red" },
        Search = { fb = "bg1", bg = "palette.red" },  -- 搜索框颜色
    }

})
vim.cmd('colorscheme duskfox')

--------------------------------------------------------------------------------
--                                                                            --
--
-- setup must be called before loading
--local nightfox = require('nightfox')

---- This function set the configuration of nightfox. If a value is not passed in the setup function
---- it will be taken from the default configuration above
--nightfox.setup({
  --fox = "duskfox", -- change the colorscheme to use nordfox
  --styles = {
    --comments = "italic", -- change style of comments to be italic
    --keywords = "bold", -- change style of keywords to be bold
    ----functions = "italic,bold" -- styles can be a comma separated list
  --},
  --inverse = {
    --match_paren = true, -- inverse the highlighting of match_parens
  --},
  --colors = {
    --red = "#FF000", -- Override the red color for MAX POWER
    --bg_alt = "#000000",
  --},
  --hlgroups = {
    --TSPunctDelimiter = { fg = "${red}" }, -- Override a highlight grou with the color red
    --LspCodeLens = { bg = "#000000", style = "bold" },
  --}
--})

---- Load the configuration set above and apply the colorscheme
--nightfox.load()
----https://github.com/EdenEast/nightfox.nvim
