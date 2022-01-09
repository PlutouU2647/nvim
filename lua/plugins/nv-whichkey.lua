local wk = require("which-key")
local Terminal = require('toggleterm.terminal').Terminal
local toggle_float = function()
    local float = Terminal:new({direction = 'float'})
    return float:toggle()
end
local toggle_lazygit = function()
    local lazygit = Terminal:new({cmd = 'lazygit', direction= 'float'})
    return lazygit:toggle()
end
local toggle_ipython = function()
    local ipython = Terminal:new({cmd = 'ipython', size = 60, direction= 'vertical'})
    return ipython:toggle()
end
local toggle_ranger= function()
    local ranger = Terminal:new({cmd = 'ranger', direction= 'float'})
    return ranger:toggle()
end
local mappings = {
    i = {'<Plug>SlimeRegionSend','Slime Run Selected code',mode = "v"},
    s = {':%s/','Search and replace',mode = "n",silent = false},
    o = {':IPythonCellExecuteCell<CR>','Run Cell',mode = "n",silent = false},
    --g = {':SlimeSendCurrentLine<cr>','Slime Run Paragraph code'},
    b = {'<Plug>SlimeConfig','Slime config'},
    --q = {':q<CR>','quit'},
    w = {':w<CR>','save'},
    q = {':q<CR>','quit'},
    E = {':e ~/.config/nvim/init.lua<CR>','Edit config'},
    m = {':SymbolsOutline<CR>','SymbolsOutline'},
    --r = {':w<cr> | :!python %<CR>','Run Code'},
    --r = {':w<cr>|:AsyncRun!python %<CR>','Run Code'},
    r = {'<cmd>RunCode<cr>','Run Code'},
    H = {'<cmd>Dashboard<cr>','Home'},
    f = {
        name = 'Telescope',
        r = {'<cmd>Telescope oldfiles<cr>', 'Recent File'},
        c = {'<cmd>Telescope colorscheme<cr>', 'Change Theme'},
        f = {'<cmd>Telescope find_files<cr>', 'Find Files'},
        g = {"<cmd>Telescope live_grep<cr>", "Live Grep"},
        h = {"<cmd>Telescope help_tags<cr>", "Help Tags"},
        b = {"<cmd>Telescope buffers<cr>", "Search Buffer"},
        d = {"<cmd>lua require('plugins/nv-telescope').search_dotfiles()<cr>", "Search Dotfile"},
        q = {"<cmd>lua require('plugins/nv-telescope').search_quantcode()<cr>","Search Quantcode"},
    },
    t = {
        --t = {':ToggleTerm<cr>','Split Below'},
        t = {':ToggleTerm dir=%:p:h<cr>','Split Below'},
        --f = {toggle_float,'Floating Terminal'},
        f = {toggle_float,'Floating Terminal'},
        l = {toggle_lazygit,'LazyGit'},
        p = {toggle_ipython,'ipython'},
        r = {toggle_ranger,'ranger'},
        j = {':vs|:terminal<CR>','Termina'},
    },
    l = {
        name = 'LSP',
        i = {'<cmd>LspInfo<cr>', 'LSP INFO'},
        I = {'<cmd>LspInstallInfo<cr>', 'LSP INFO'},
        k = {'<cmd>lua vim.lsp.buf.signature_help()<cr>','Signature Help'},
        K = {'<cmd>lua vim.lsp.buf.hover()<cr>','Hover Info'},
        w = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>','Add Workspace Folder'},
        W = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>','remove Workspace Folder'},
        l = {'<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>','List Workspace Folders'},
        t = {'<cmd>lua vim.lsp.buf.type_definition()<cr>','Type Definition'},
        d = {'<cmd>lua vim.lsp.buf.definition()<cr>','Go To Definition'},
        D = {'<cmd>lua vim.lsp.buf.declaration()<cr>','Go To Declaration'},
        --r = {'<cmd>lua vim.lsp.buf.references()<cr>','References'},
        r = {'<cmd>lua vim.lsp.buf.rename()<cr>','Rename'},
        a = {'<cmd>lua vim.lsp.buf.code_action()<cr>','Code Action'},
        e = {'<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>','Show Line Diagnostics'},
        n = {'<cmd>lua vim.lsp.diagnostic.go_to_next()<cr>','show line diagnostics'},
    },
    p ={
        name = 'Ipython',
        --p = {':SlimeSend1 ipython --matplotlib<CR>','Ipython init'},
        p = {':SlimeSend1 ipython<CR>','Ipython init'},
        k = {':IPythonCellInsertAbove<CR>','Add cell Above'},
        j = {':IPythonCellInsertBelow<CR>','Add cell below'},
        c = {':IPythonCellClose<CR>', 'Close Window'},
        d = {':SlimeSend1 %debug<CR>', 'Debug'},
        --o = {'','Ipython init'},
        i = {':echo &channel<CR>','Get channel'},
        --l = {':lua require("").lsp.buf.hover()<CR>','Hover Info'},
        --

    }
    --t = {
        --name = 'floaterm',
        --r = {'<cmd>Telescope oldfiles<cr>'                    , 'Open Recent File'},
        --t = {'<cmd>FloatermNew --wintype=popup --height=6<CR>'        , 'terminal'},
        --f = {'<cmd>FloatermNew fzf<CR>'                               , 'fzf'},
        --g = {'<cmd>FloatermNew lazygit<CR>'                           , 'git'},
        --d = {'<cmd>FloatermNew lazydocker<CR>'                        , 'docker'},
        --n = {'<cmd>FloatermNew node<CR>'                              , 'node'},
        --N = {'<cmd>FloatermNew nnn<CR>'                               , 'nnn'},
        --p = {'<cmd>FloatermNew ipython<CR>'                           , 'ipython'},
        --r = {'<cmd>FloatermNew ranger<CR>'                            , 'ranger'},
        --t = {'<cmd>FloatermToggle<CR>'                                , 'toggle'},
        --y = {'<cmd>FloatermNew ytop<CR>'                              , 'ytop'},
        --s = {'<cmd>FloatermNew ncdu<CR>'                              , 'ncdu'},
     --},

}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
vim.o.timeoutlen = 250





--'https://github.com/folke/which-key.nvim'
--:help which-key

