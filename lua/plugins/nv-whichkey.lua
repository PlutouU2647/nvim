local wk = require("which-key")
-- terminal
local Terminal = require("toggleterm.terminal").Terminal
local toggle_float = function()
    local float = Terminal:new({direction = "float"})
    return float:toggle()
end
-- lazygit
local toggle_lazygit = function()
    local lazygit = Terminal:new({cmd = "lazygit", direction= "float", dir="%:p:h"})
    return lazygit:toggle()
end
-- ipython
local toggle_ipython = function()
    local ipython = Terminal:new({cmd = "ipython", size = 60, direction= "vertical", dir="%:p:h"})
    return ipython:toggle()
end
-- ranger
local toggle_ranger = function()
    local ranger = Terminal:new({cmd = "ranger", direction= "float", dir="%:p:h"})
    return ranger:toggle()
end
local toggle_lf = function()
    local lf = Terminal:new({cmd = "lf", direction= "float", dir="%:p:h"})
    return lf:toggle()
end
local mappings = {
    --i = {"<Plug>SlimeRegionSend","Slime Run Selected code",mode = "v"},
    s = {":%s/","Search and replace",mode = "n",silent = false},
    o = {"<Plug>SlimeSendCell","Run Cell",mode = "n",silent = false},
    i = {":IPythonCellExecuteCellVerbose<CR>","Run Cell",mode = "n",silent = false},
    --g = {":SlimeSendCurrentLine<cr>","Slime Run Paragraph code"},
    b = {"<Plug>SlimeConfig","Slime config"},
    --q = {":q<CR>","quit"},
    --w = {":w<CR>","save"},
    --q = {":q<CR>","quit"},
    E = {":e ~/.config/nvim/init.lua<CR>","Edit config"},
    m = {":SymbolsOutline<CR>","SymbolsOutline"},
    --r = {":w<cr> | :!python %<CR>","Run Code"},
    --r = {":w<cr>|:AsyncRun!python %<CR>","Run Code"},
    r = {"<cmd>RunCode<cr>","Run Code"},
    H = {"<cmd>Dashboard<cr>","Home"},
    f = {
        name = "Telescope",
        r = {"<cmd>Telescope oldfiles<cr>", "Recent File"},
        c = {"<cmd>Telescope colorscheme<cr>", "Change Theme"},
        f = {"<cmd>Telescope find_files<cr>", "Find Files"},
        g = {"<cmd>Telescope live_grep<cr>", "Live Grep"},
        h = {"<cmd>Telescope help_tags<cr>", "Help Tags"},
        b = {"<cmd>Telescope buffers<cr>", "Search Buffer"},
        --d = {"<cmd>lua require('plugins/nv-telescope').search_dotfiles()<cr>", "Search Dotfile"},
        --q = {"<cmd>lua require('plugins/nv-telescope').search_quantcode()<cr>","Search Quantcode"},
        p = {"<cmd>Telescope projects<cr>","Open Project"},
    },
    t = {
        name = "Terminal",
        t = {":ToggleTerm dir=%:p:h<cr>",   "Split Below"},
        f = {toggle_float,                  "Floating Terminal"},
        g = {toggle_lazygit,                "LazyGit"},
        p = {toggle_ipython,                "Ipython"},
        r = {toggle_ranger,                 "Ranger"},
        l = {toggle_lf,                     "Lf"},
    },
    l = {
        name = "LSP",
        i = {"<cmd>LspInfo<cr>",                                                       "LSP INFO"},
        I = {"<cmd>LspInstallInfo<cr>",                                                "LSP INFO"},
        k = {"<cmd>lua vim.lsp.buf.signature_help()<cr>",                              "Signature Help"},
        K = {"<cmd>lua vim.lsp.buf.hover()<cr>",                                       "Hover Info"},
        w = {"<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>",                        "Add Workspace Folder"},
        W = {"<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>",                     "remove Workspace Folder"},
        l = {"<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>",  "List Workspace Folders"},
        t = {"<cmd>lua vim.lsp.buf.type_definition()<cr>",                             "Type Definition"},
        d = {"<cmd>lua vim.lsp.buf.definition()<cr>",                                  "Go To Definition"},
        D = {"<cmd>lua vim.lsp.buf.declaration()<cr>",                                 "Go To Declaration"},
        --r = {"<cmd>lua vim.lsp.buf.references()<cr>",                                "References"},
        r = {"<cmd>lua vim.lsp.buf.rename()<cr>",                                      "Rename"},
        a = {"<cmd>lua vim.lsp.buf.code_action()<cr>",                                 "Code Action"},
        e = {"<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>",                "Show Line Diagnostics"},
        n = {"<cmd>lua vim.lsp.diagnostic.go_to_next()<cr>",                           "show line diagnostics"},
    },
    p ={
        name = "Ipython",
        --p = {":SlimeSend1 ipython --matplotlib<CR>","Ipython init"},
        p = {":SlimeSend1 ipython<CR>","Ipython init"},
        k = {":IPythonCellInsertAbove<CR>","Add cell Above"},
        j = {":IPythonCellInsertBelow<CR>","Add cell below"},
        c = {":IPythonCellClose<CR>", "Close Window"},
        d = {":SlimeSend1 %debug<CR>", "Debug"},
        --o = {"","Ipython init"},
        i = {":echo &channel<CR>","Get channel"},
        --l = {":lua require("").lsp.buf.hover()<CR>","Hover Info"},
        --

    }
    --t = {
        --name = "floaterm",
        --r = {"<cmd>Telescope oldfiles<cr>"                    , "Open Recent File"},
        --t = {"<cmd>FloatermNew --wintype=popup --height=6<CR>"        , "terminal"},
        --f = {"<cmd>FloatermNew fzf<CR>"                               , "fzf"},
        --g = {"<cmd>FloatermNew lazygit<CR>"                           , "git"},
        --d = {"<cmd>FloatermNew lazydocker<CR>"                        , "docker"},
        --n = {"<cmd>FloatermNew node<CR>"                              , "node"},
        --N = {"<cmd>FloatermNew nnn<CR>"                               , "nnn"},
        --p = {"<cmd>FloatermNew ipython<CR>"                           , "ipython"},
        --r = {"<cmd>FloatermNew ranger<CR>"                            , "ranger"},
        --t = {"<cmd>FloatermToggle<CR>"                                , "toggle"},
        --y = {"<cmd>FloatermNew ytop<CR>"                              , "ytop"},
        --s = {"<cmd>FloatermNew ncdu<CR>"                              , "ncdu"},
     --},
}
local opts = {prefix = "<leader>"}
wk.register(mappings, opts)
vim.o.timeoutlen = 250


local wkl = require('which-key')

vim.cmd('autocmd FileType * lua setKeybinds()')
function setKeybinds()
    local fileTy = vim.api.nvim_buf_get_option(0, "filetype")
    local optss = { prefix = '<leader>', buffer = 0 }
    local opt = {noremap = true, silent = false }
    local map = vim.api.nvim_buf_set_keymap

    if fileTy == 'python' then
        map(0, 'n', '<C-m>', '<plug>SlimeSendCell:IPythonCellNextCell<CR>', {noremap = false, silent = false })
        map(0, 'n', '<C-a>', ':echo "hello"<cr>', opt)
        wkl.register({
            k = {":IPythonCellInsertAbove<CR>","Insert Above",mode = "n",silent = true},
            j = {":IPythonCellInsertBelow<CR>","Insert Below",mode = "n",silent = true},
            m = {
                name = "Python",
                m = {':w', 'test write'},
                q = {':q', 'test quit'},
            }
        }, optss)
        --vim.api.set
    elseif fileTy == 'markdown' then
        wkl.register({
            m = {
                name = "markdown",
                a = {':MarkdownPreview<CR>', 'Start Preview'},
                c = {':MarkdownPreviewStop<CR>', 'Stop Preview'},
                m = {':MarkdownPreviewToggle<CR>', 'Toggle Preview'},
            }
        }, optss)
    end
end
--
--if vim.bo.filetype == "vimwiki" then
    --print("markdown")
    ----mappings.m.f = {
        ----name = "Markdown",
        ----f = {"<cmd>MarkdownFormat<cr>", "Format"},
        ----g = {"<cmd>MarkdownGitHub<cr>", "GitHub"},
        ----h = {"<cmd>MarkdownHelp<cr>", "Help"},
    --wk.register({
        --["<leader>"] = {
        --m = {
            --name = "MarkDown",
                --r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
                --i = {"<cmd>MarkdownInsertLink<cr>", "Insert Link"},
            --},
        --},
    --})
--end

--if filetype == "md" then
    --print("md")
--end


--"https://github.com/folke/which-key.nvim"
--:help which-key

--https://github.nilmap.com/issue?dest_url=https://github.com/folke/which-key.nvim/issues/135
--keymapping based on file type
