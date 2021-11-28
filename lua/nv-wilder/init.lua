--vim.cmd [[
--call wilder#setup({'modes': [':', '/', '?']})

--call wilder#set_option('pipeline', [
      --\   wilder#branch(
      --\     wilder#cmdline_pipeline({
      --\       'fuzzy': 1,
      --\       'set_pcre2_pattern': has('nvim'),
      --\     }),
      --\     wilder#python_search_pipeline({
      --\       'pattern': 'fuzzy',
      --\     }),
      --\   ),
      --\ ])

--let s:highlighters = [
        --\ wilder#pcre2_highlighter(),
        --\ wilder#basic_highlighter(),
        --\ ]

--call wilder#set_option('renderer', wilder#renderer_mux({
      --\ ':': wilder#popupmenu_renderer({
      --\   'highlighter': s:highlighters,
      --\ }),
      --\ '/': wilder#wildmenu_renderer({
      --\   'highlighter': s:highlighters,
      --\ }),
      --\ }))
--]]
    vim.cmd [[
call wilder#setup({'modes': [':', '/', '?']})
call wilder#set_option('use_python_remote_plugin', 0)
call wilder#set_option('pipeline', [wilder#branch(wilder#cmdline_pipeline({'use_python': 0,'fuzzy': 1, 'fuzzy_filter': wilder#lua_fzy_filter()}),wilder#vim_search_pipeline(), [wilder#check({_, x -> empty(x)}), wilder#history(), wilder#result({'draw': [{_, x -> ' ' . x}]})])])
call wilder#set_option('renderer', wilder#renderer_mux({':': wilder#popupmenu_renderer({'highlighter': wilder#lua_fzy_highlighter(), 'left': [wilder#popupmenu_devicons()], 'right': [' ', wilder#popupmenu_scrollbar()]}), '/': wilder#wildmenu_renderer({'highlighter': wilder#lua_fzy_highlighter()})}))
]]






-- 'https://github.com/ayamir/nvimdots/blob/6c189bf44f9276978c36b183b74675062a3d1148/lua/modules/tools/config.lua'
-- 'https://github.com/gelguy/wilder.nvim'
