-- highlight yank
vim.api.nvim_create_autocmd({"TextYankPost"}, {
    callback = function()
        --vim.highlight.on_yank({higroup= "Visual", timeout= 200})
        vim.highlight.on_yank({higroup= "IncSearch", timeout= 200})
    end
})
-- set wrap for markdown
vim.api.nvim_create_autocmd({ "filetype" }, {
    pattern = { "markdown", "vimwiki" },
    callback = function()
        vim.opt_local.wrap  = true
        vim.opt_local.spell = true
    end
})

--a
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    pattern = { "plugin.lua" },
    callback = function()
        vim.cmd "PackerCompile"
        vim.cmd "PackerSync"
    end
})
    --autocmd BufWritePost plugin.lua source <afile> | PackerSync

-- 修复自动注释
vim.api.nvim_create_autocmd({ "filetype" }, {
    pattern = { "lua", "python" },
    callback = function()
        vim.cmd "set formatoptions-=cro"
    end
})


vim.cmd([[
autocmd Filetype yaml setlocal et ts=2 sw=2 sts=0
set path+=**
]])


vim.cmd([[
let g:zettelkasten = "/Users/lawrencexing/home/lawrence/notes/zettelkasten/"
command! -nargs=1 NewZettel :execute ":e" zettelkasten . strftime("%Y%m%d%H%M") . "-<args>.md"

nnoremap <leader>nz :NewZettel 

" CtrlP function for inserting a markdown link with Ctrl-X
function! CtrlPOpenFunc(action, line)
   if a:action =~ '^h$'    
      " Get the filename
      let filename = fnameescape(fnamemodify(a:line, ':t'))
	  let filename_wo_timestamp = fnameescape(fnamemodify(a:line, ':t:s/\d\+-//'))

      " Close CtrlP
      call ctrlp#exit()
      call ctrlp#mrufiles#add(filename)

      " Insert the markdown link to the file in the current buffer
	  let mdlink = "[".filename_wo_timestamp."](".filename.")"
      put=mdlink
  else    
      " Use CtrlP's default file opening function
      call call('ctrlp#acceptfile', [a:action, a:line])
   endif
endfunction

let g:ctrlp_open_func = { 
         \ 'files': 'CtrlPOpenFunc',
         \ 'mru files': 'CtrlPOpenFunc' 
         \ }

]])
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

vim.cmd([[
let g:smartim_default = 'com.apple.keylayout.US'
augroup smartim
  autocmd!
  set timeoutlen=0
  autocmd VimLeavePre * call Smartim_SelectDefault()
  autocmd InsertLeave * call Smartim_SelectDefault()
  autocmd InsertEnter * call Smartim_SelectSaved()
augroup end
]])

vim.cmd([[
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0


set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none

set spelllang=en_us

let g:vimtex_compiler_progname='nvr'
]])


vim.api.nvim_create_autocmd({ "CursorMoved", "BufWinEnter", "BufFilePost", "InsertEnter", "BufWritePost" }, {
  callback = function()
    local winbar_filetype_exclude = {
      "help",
      "startify",
      "dashboard",
      "packer",
      "neogitstatus",
      "NvimTree",
      "Trouble",
      "alpha",
      "lir",
      "Outline",
      "spectre_panel",
      "toggleterm",
    }

    --if vim.tbl_contains(winbar_filetype_exclude, vim.bo.filetype) then
      --vim.opt_local.winbar = nil
      --return
    --end

    --local isempty = require("plugins.functions").isempty
    --local get_buf_option = vim.api.nvim_buf_get_option

    --local value = require("plugins.nv-winbar").filename()

    --if not isempty(value) then
      --local gps = require("plugins.nv-winbar").gps()
      --value = value .. gps
    --end

    --if not isempty(value) and get_buf_option(0, "mod") then
      --local mod = require("plugins.nv-icons").ui.Circle
      --value = value .. " " .. "%#LineNr#" .. mod .. "%*"
    --end

    --vim.opt_local.winbar = value
  end,
})

