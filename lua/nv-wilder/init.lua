vim.cmd [[
call wilder#set_option('pipeline', [
    \   wilder#branch(
    \     wilder#cmdline_pipeline({
    \       'fuzzy': 1,
    \     }),
    \     wilder#python_search_pipeline({
    \       'pattern': 'fuzzy',
    \     }),
    \   ),
    \ ])
]]

