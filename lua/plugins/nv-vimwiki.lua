--let g:vimwiki_list = [{'path': '/Users/$USER/Library/Mobile Documents/iCloud~md~obsidian/Documents/MarkDown/wiki',
                      --\ 'ext': '.md'}]
                      --\ 'syntax': 'markdown', 'ext': '.md'}]
vim.cmd([[
let g:vimwiki_list = [{'path': '~/Library/Mobile Documents/iCloud~md~obsidian/Documents/MarkDown/wikipage',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

au filetype vimwiki silent! iunmap <buffer> <Tab>
au filetype vimwiki silent! iunmap <buffer> <S-Tab>
let g:vimwiki_use_mouse = 1
let g:vimwiki_auto_chdir = 1
let g:vimwiki_hl_headers = 1
]])
--au filetype vimwiki silent! iunmap <buffer> <CR>
--
--
--
--
--
--
--let g:vimwiki_ext2syntax = {'.md': 'markdown'}
--let g:vimwiki_syntax_variables.markdown.Link1 = vimwiki#vars#get_global('WikiLinkTemplate1')
--let g:vimwiki_syntax_variables.markdown.Link1 = vimwiki#vars#get_global('WikiLinkTemplate1')
--let g:vimwiki_list = [{'path': '/Users/$USER/Library/Mobile Documents/iCloud~md~obsidian/Documents/MarkDown/000vimwiki',
                      --\ 'syntax': 'markdown', 'ext': '.md'}]

--require("luasnip").filetype_extend("vimwiki", {"markdown"}


--[[
https://github.com/vimwiki/vimwiki
--]]
--
--
--vim.cmd([[
--let g:vimwiki_list = [{'path': '/Users/$USER/Library/Mobile Documents/iCloud~md~obsidian/Documents/MarkDown/wikipage',
                      --\ 'syntax': 'markdown', 'ext': '.md'}]
--let g:vimwiki_syntax_variables.markdown.Link1 = vimwiki#vars#get_global('WikiLinkTemplate1')
--]])
