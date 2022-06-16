-- :help options
local settings = {
    whichwrap='b,s,<,>,[,],h,l', -- 允许使用上下左右箭头移动光标
    mouse = 'a',
    cmdheight = 1,               -- Number of screen line
    termguicolors = true,        -- Terminal color
    showtabline = 0,
    hidden = true,
    fileencoding = 'utf-8',
    showmode = false,            -- show vim botton mode
    backup = false,              -- no backup file
    writebackup = false,         -- no backup file
    clipboard = 'unnamedplus',   -- clipboard
    scrolloff = 8,
    sidescrolloff = 8,
    wrap = false,                 -- 换行
    cursorline = true,           -- 显示光标行
    signcolumn = 'yes',
    updatetime = 100,            -- 更新时间
    wildmenu = true,             -- wildmenu
    wildignorecase = true,       -- wildignorecase
    relativenumber = true,       -- relative number
    incsearch = true,            -- incsearch
    ignorecase = true,           -- ignorecase also in cmd mode auto complete
    autoindent = true,           -- autoindent
    tabstop = 4,                 -- tabstop
    softtabstop = 4,             -- softtabstop
    expandtab = true,            -- expandtab
    smarttab = true,             -- smarttab
    smartindent = true,          -- smartindent
    shiftwidth = 4,              -- shiftwidth
    fillchars="eob: ",
    splitbelow = true,           -- splitbelow
    splitright = true,           -- splitright
    --guifont = 'MesloLGS NF:h14'  -- font
}


vim.cmd('filetype plugin on')
vim.cmd('filetype on')
vim.cmd('syntax on')
vim.g.nocompatible = true
--vim.wo.number=true  -- line number

for k, v in pairs(settings) do
  vim.opt[k] = v
end


--self

-- font
--vim.o.guifont = 'MesloLGS NF:h14'  -- font

--vim.cmd([[
--autocmd FileType yaml setlocal tabstop=2
--autocmd FileType md setlocal ts=2 sts=2 sw=2 expandtab
--]])



-- indenting
--vim.o.foldmethod='indent'
--vim.o.foldmethod='manual'


--vim.o.setlocal = 'spell'

--vim.o.spelllang='en_us'





-- 输入法切换
-- 替代方法插件 xkbswitch
--vim.cmd([[
--let g:input_toggle = 0
--function! Fcitx2en()
   --let s:input_status = system("fcitx-remote")
   --if s:input_status == 2
      --let g:input_toggle = 1
      --let l:a = system("fcitx-remote -c")
   --endif
--endfunction

--function! Fcitx2zh()
   --let s:input_status = system("fcitx-remote")
   --if s:input_status != 2 && g:input_toggle == 1
      --let l:a = system("fcitx-remote -o")
      --let g:input_toggle = 0
   --endif
--endfunction

--set timeoutlen=150
--autocmd InsertLeave * call Fcitx2en()
--autocmd InsertEnter * call Fcitx2zh()
--]])

--vim.cmd([[
--let g:smartim_default = 'com.apple.keylayout.US'
--function! Multiple_cursors_before()
  --let g:smartim_disable = 1
--endfunction
--function! Multiple_cursors_after()
  --let g:smartim_disable = 0
--endfunction
--]])
--[[
https://blog.csdn.net/lxyoucan/article/details/114365153
--]]



--let g:vimtex_view_method = 'zathura'
--let g:vimtex_quickfix_mode=0
--filetype plugin indent on
--let maplocalleader = ","

--vim.cmd('autocmd BufWinEnter,FileType * lua setKeybinds()') --keymapping based on file type
--syntax enable
--
--
--
--let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
--let g:vimtex_view_method = 'zathura'
--let g:latex_view_general_viewer = 'zathura'
--let g:vimtex_view_method='zathura'
--vim.cmd([[
--let g:tex_flavor='latex'
--let g:vimtex_quickfix_mode=0
--let g:vimtex_view_method='zathura'
--set spelllang=en_us
--set conceallevel=1
--let maplocalleader = ","
--let g:vimtex_compiler_latexmk = {
      --\ 'build_dir': 'build',
      --\ 'options' : [
      --\   '-shell-escape',
      --\   '-verbose',
      --\   '-file-line-error',
      --\   '-synctex=1',
      --\   '-interaction=nonstopmode',
      --\ ],
      --\}
--]])


