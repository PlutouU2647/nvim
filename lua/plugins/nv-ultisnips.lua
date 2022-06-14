--[[
iAwrb 为snippet的选项。
i 表示片段可在句中被触发。默认是只有在前面有多个空格或者在行首时才会被触发。
A 表示片段会被自动触发
w 表示片段只会在关键词为单独单词的情况下被触发。若关键词为 mk, 那么只有在 html mk 时会被触发，htmlmk 不会被触发。
r 表示关键词使用正则表达式。正则表达式必须用 两个引号' '包围。比如 \'([1-9])day\'。
b 表示只有在一行的开头才会被触发。
--]]

-- ┌──────────────────┐
-- │ ultisnips config │
-- └──────────────────┘

vim.cmd([[
"设置文件目录
let g:UltiSnipsSnippetDirectories=['~/.config/nvim/UltiSnips/']
"设置打开配置文件时为垂直打开
let g:UltiSnipsEditSplit="vertical"
]])

--"设置tab键为触发键
--let g:UltiSnipsExpandTrigger = '<tab>'
--"设置向后跳转键
--let g:UltiSnipsJumpForwardTrigger = '<tab>'
--"设置向前跳转键
--let g:UltiSnipsJumpBackwardTrigger = '<S-tab>'


-- ┌──────────────────┐
-- │ ultisnips config │
-- └──────────────────┘
--vim.cmd([[
--"设置tab键为触发键
--let g:UltiSnipsExpandTrigger = '<c-j>'
--"设置向后跳转键
--let g:UltiSnipsJumpForwardTrigger = '<c-j>'
--"设置向前跳转键
--let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
--"设置文件目录
--let g:UltiSnipsSnippetDirectories=['~/.config/nvim/UltiSnips/']
--"设置打开配置文件时为垂直打开
--let g:UltiSnipsEditSplit="vertical"
--]])
