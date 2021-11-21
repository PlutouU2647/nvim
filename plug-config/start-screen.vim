"https://www.youtube.com/watch?v=9IcXJvoPHCY
"https://www.chrisatmachine.com/Neovim/11-startify/
"ascii font:http://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20 
":SLoad       load a session
":SSave[!]    save a session
":SDelete[!]  delete a session
":SClose      close a session




let g:startify_custom_header = [
        \'  ██╗      █████╗ ██╗    ██╗██████╗ ███████╗███╗   ██╗ ██████╗███████╗', 
        \'  ██║     ██╔══██╗██║    ██║██╔══██╗██╔════╝████╗  ██║██╔════╝██╔════╝', 
        \'  ██║     ███████║██║ █╗ ██║██████╔╝█████╗  ██╔██╗ ██║██║     █████╗  ', 
        \'  ██║     ██╔══██║██║███╗██║██╔══██╗██╔══╝  ██║╚██╗██║██║     ██╔══╝  ', 
        \'  ███████╗██║  ██║╚███╔███╔╝██║  ██║███████╗██║ ╚████║╚██████╗███████╗', 
        \'  ╚══════╝╚═╝  ╚═╝ ╚══╝╚══╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝ ╚═════╝╚══════╝', 
        \]
let g:startify_session_dir = '~/.config/nvim/session'


let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]



"startify_bookmarks 
let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ '~/quant/stock',
            \ '~/quant/code/xbx-coin-2020_part3_OKEX/program/3_少年意气',
            \ ]
