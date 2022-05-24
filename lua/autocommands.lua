vim.api.nvim_create_autocmd({"TextYankPost"}, {
    callback = function()
        --vim.highlight.on_yank({higroup= "Visual", timeout= 200})
        vim.highlight.on_yank({higroup= "IncSearch", timeout= 200})
    end
})

-- 上次的的位置
vim.cmd([[
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \	execute 'normal! g`"zvzz' |
        \ endif
augroup END
]])

--vim.api.nvim_create_autocmd({ "CursorMoved", "BufWinEnter", "BufFilePost", "InsertEnter", "BufWritePost" }, {
  --callback = function()
    --local winbar_filetype_exclude = {
      --"help",
      --"startify",
      --"dashboard",
      --"packer",
      --"neogitstatus",
      --"NvimTree",
      --"Trouble",
      --"alpha",
      --"lir",
      --"Outline",
      --"spectre_panel",
      --"toggleterm",
    --}

    --if vim.tbl_contains(winbar_filetype_exclude, vim.bo.filetype) then
      --vim.opt_local.winbar = nil
      --return
    --end

    --local isempty = require("user.functions").isempty
    --local get_buf_option = vim.api.nvim_buf_get_option

    --local value = require("user.winbar").filename()

    --if not isempty(value) then
      --local gps = require("user.winbar").gps()
      --value = value .. gps
    --end

    --if not isempty(value) and get_buf_option(0, "mod") then
      --local mod = require("user.icons").ui.Circle
      --value = value .. " " .. "%#LineNr#" .. mod .. "%*"
    --end

    --vim.opt_local.winbar = value
  --end,
--})

