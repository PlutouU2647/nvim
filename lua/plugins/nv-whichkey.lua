local wk = require("which-key")
-- terminal
local Terminal = require("toggleterm.terminal").Terminal


local mappings = {
    --i = {"<Plug>SlimeRegionSend","Slime Run Selected code",mode = "v"},
    S = {":%s/","Search and replace",mode = "n",silent = false},
    s = {":'<,'> Tabularize /:", "Tabularize",mode = "v", silent = false},
    --s = {"<Plug>SlimeSendCell", "Send Cell"},
    --o = {"<Plug>SlimeSendCell","Run Cell",mode = "n",silent = false},
    --i = {":IPythonCellExecuteCellVerbose<CR>","Run Cell",mode = "n",silent = false},
    --g = {":SlimeSendCurrentLine<cr>","Slime Run Paragraph code"},
    b = {"<Plug>SlimeConfig","Slime config"},
    --q = {":q<CR>","quit"},
    --w = {":w<CR>","save"},
    --q = {":q<CR>","quit"},
    E = {":e ~/.config/nvim/init.lua<CR>","Edit config"},
    m = {":SymbolsOutline<CR>","SymbolsOutline"},
    --r = {":w<cr> | :!python %<CR>","Run Code"},
    --r = {":w<cr>|:AsyncRun!python %<CR>","Run Code"},
    r = {"<CMD>RunCode<cr>","Run Code"},
    H = {"<CMD>Dashboard<cr>","Home"},
    ["1"] = "which_key_ignore",
    ["2"] = "which_key_ignore",
    ["3"] = "which_key_ignore",
    ["4"] = "which_key_ignore",
    ["5"] = "which_key_ignore",
    ["6"] = "which_key_ignore",
    ["7"] = "which_key_ignore",
    ["8"] = "which_key_ignore",
    ["9"] = "which_key_ignore",

    f = {
        name = "Find",
        r = {"<CMD>Telescope oldfiles<cr>", "Recent File"},
        c = {"<CMD>Telescope colorscheme<cr>", "Change Theme"},
        f = {"<CMD>Telescope find_files<cr>", "Find Files"},
        g = {"<CMD>Telescope live_grep<cr>", "Live Grep"},
        h = {"<CMD>Telescope help_tags<cr>", "Help Tags"},
        b = {"<CMD>Telescope buffers<cr>", "Search Buffer"},
        --d = {"<CMD>lua require('plugins/nv-telescope').search_dotfiles()<cr>", "Search Dotfile"},
        --q = {"<CMD>lua require('plugins/nv-telescope').search_quantcode()<cr>","Search Quantcode"},
        p = {"<CMD>Telescope projects<cr>","Open Project"},
        m = {"<CMD>Telescope marks<cr>","Show Marks"},
        P = {"<CMD>Telescope packer<cr>","Open Pakcker"},
        k = {"<CMD>Telekasten insert_link<cr>","Insert Wiki Link"},
        l = {"<CMD>Telescope ultisnips theme=dropdown<CR>", "Ultisnips"},
        s = {"<CMD>Telescope ultisnips theme=dropdown<CR>", "Ultisnips"},
        t = {"<CMD>lua require'telescope.builtin'.current_buffer_tags{}<CR>", "Find Tags"},
        K = {"<CMD>Telescope keymaps<cr>","Find Keymapping"},
    },
    g = {
        name = "Git",
        g = {"<CMD>lua _LAZYGIT_TOGGLE()<cr>",                 "Lazygit"},
    },

    t = {
        name = "Terminal",
        t = {":ToggleTerm dir=%:p:h<cr>",                 "Open Terminal In Current Dir"},
        f = {"<CMD>lua _TOGGLE_FLOAT()<cr>",              "Floaterm"},
        p = {"<CMD>lua _TOGGLE_IPYTHON()<cr>",            "Ipython"},
        b = {"<CMD>lua _TOGGLE_BLOW()<cr>",               "Blow"},

    },

    l = {
        name = "LSP",
        i = {"<CMD>LspInfo<cr>",                                                       "LSP INFO"},
        I = {"<CMD>LspInstallInfo<cr>",                                                "LSP INFO"},
        --k = {"<CMD>lua vim.lsp.buf.signature_help()<cr>",                              "Signature Help"},
        --K = {"<CMD>lua vim.lsp.buf.hover()<cr>",                                       "Hover Info"},
        k = {"<CMD>Lspsaga signature_help<cr>",                                        "Signature Help"},
        K = {"<CMD>Lspsaga hover_doc<cr>",                                             "Hover document"},
        w = {"<CMD>lua vim.lsp.buf.add_workspace_folder()<cr>",                        "Add Workspace Folder"},
        W = {"<CMD>lua vim.lsp.buf.remove_workspace_folder()<cr>",                     "remove Workspace Folder"},
        l = {"<CMD>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>",  "List Workspace Folders"},
        t = {"<CMD>Telescope lsp_type_definitions<cr>",                             "Type Definition"},
        d = {"<CMD>lua vim.lsp.buf.definition()<cr>",                                  "Go To Definition"},
        D = {"<CMD>lua vim.lsp.buf.declaration()<cr>",                                 "Go To Declaration"},
        --r = {"<CMD>lua vim.lsp.buf.references()<cr>",                                "References"},
        r = {"<CMD>lua vim.lsp.buf.rename()<cr>",                                      "Rename"},
        --r = {"<CMD>Lspsaga rename<cr>",                                                "Rename"},
        --a = {"<CMD>lua vim.lsp.buf.code_action()<cr>",                                 "Code Action"},
        a = {"<CMD>Lspsaga code_action<cr>",                                           "Code Action"},
        e = {"<CMD>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>",                "Show Line Diagnostics"},
        n = {"<CMD>lua vim.lsp.diagnostic.go_to_next()<cr>",                           "show line diagnostics"},
        f = {"<CMD>lua _LFPICKER_TOGGLE('')<cr>",               "Blow"},
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
        --r = {"<CMD>Telescope oldfiles<cr>"                    , "Open Recent File"},
        --t = {"<CMD>FloatermNew --wintype=popup --height=6<CR>"        , "terminal"},
        --f = {"<CMD>FloatermNew fzf<CR>"                               , "fzf"},
        --g = {"<CMD>FloatermNew lazygit<CR>"                           , "git"},
        --d = {"<CMD>FloatermNew lazydocker<CR>"                        , "docker"},
        --n = {"<CMD>FloatermNew node<CR>"                              , "node"},
        --N = {"<CMD>FloatermNew nnn<CR>"                               , "nnn"},
        --p = {"<CMD>FloatermNew ipython<CR>"                           , "ipython"},
        --r = {"<CMD>FloatermNew ranger<CR>"                            , "ranger"},
        --t = {"<CMD>FloatermToggle<CR>"                                , "toggle"},
        --y = {"<CMD>FloatermNew ytop<CR>"                              , "ytop"},
        --s = {"<CMD>FloatermNew ncdu<CR>"                              , "ncdu"},
     --},
}
local opts = {prefix = "<leader>"}
wk.register(mappings, opts)
vim.o.timeoutlen = 250


local wkl = require('which-key')

-- get oprating system if it's linux or macos


vim.cmd('autocmd FileType * lua setKeybinds()')
function setKeybinds()
    local fileTy = vim.api.nvim_buf_get_option(0, "filetype")
    local optss = { prefix = '<leader>', buffer = 0 }
    local opt = {noremap = true, silent = false }
    local map = vim.api.nvim_buf_set_keymap
    local os = vim.fn.systemlist("uname")[1]

    if fileTy == 'python' then
        if os == 'Darwin' then
            map(0, 'n', '<C-c><C-c>', '<CMD>IPythonCellExecuteCell<CR>', {noremap = false, silent = false })   -- execute cell
            map(0, 'n', '<CR>', '<CMD>IPythonCellExecuteCellJump<CR>', {noremap = false, silent = false })   -- execute cell
            map(0, 'n', '<S-CR>', '<CMD>IPythonCellExecuteCellJump<CR>', {noremap = false, silent = false })   -- execute cell
        elseif os == "Linux" then
            --map(0, 'n', '<C-m>', '<CMD>IPythonCellExecuteCellVerboseJump<CR>', {noremap = false, silent = false })
            map(0, 'n', '<CR>', '<CMD>IPythonCellExecuteCellVerboseJump<CR>', {noremap = false, silent = false })
            --vim.cmd([[
            --let g:slime_cell_delimiter = "# %%"
            --let g:ipython_cell_tag = ['# %%', '```', '```python', '``` python', '```py']
            --]])
        end


        wkl.register({
            k = {":IPythonCellInsertAbove<CR>","Insert Above",mode = "n",silent = true},
            j = {":IPythonCellInsertBelow<CR>","Insert Below",mode = "n",silent = true},
            --m = {
                --name = "Python",
                --m = {':w', 'test write'},
                --q = {':q', 'test quit'},
            --}
        }, optss)
        --vim.api.set
        elseif fileTy == 'markdown' then
            --map(0, 'n', '<M-CR>', '<CMD>echo "hello"<CR>', {noremap = false, silent = false })  -- option + enter execute cell and insert below
            map(0, 'n', '<C-c><C-c>', '<CMD>IPythonCellExecuteCell<CR>', {noremap = false, silent = false })   -- execute cell

            -- 快捷键循环日记
            map(0, 'n', '<C-[>', '<CMD>VimwikiDiaryPrevDay<CR>', {noremap = false, silent = false })   -- execute cell
            map(0, 'n', '<C-]>', '<CMD>VimwikiDiaryNextDay<CR>', {noremap = false, silent = false })   -- execute cell
            vim.b.slime_cell_delimiter = '```'
            vim.b.ipython_cell_tag = {'# %%', '```', '```python', '``` python', '```py'}
            vim.cmd([[
            let g:slime_cell_delimiter = "```"
            let g:ipython_cell_tag = ['# %%', '```', '```python', '``` python', '```py']
            ]])


            wkl.register({
                m = {
                    name = "markdown",
                    a = {':MarkdownPreview<CR>', 'Start Preview'},
                    c = {':MarkdownPreviewStop<CR>', 'Stop Preview'},
                    m = {':MarkdownPreview<CR>', 'markdown preview'},
                }
            }, optss)
        end
end
local presets = require("which-key.plugins.presets")
presets.objects['1'] = nil
presets.objects['2'] = nil
presets.objects['3'] = nil
presets.objects['4'] = nil
--
--if vim.bo.filetype == "vimwiki" then
    --print("markdown")
    ----mappings.m.f = {
        ----name = "Markdown",
        ----f = {"<CMD>MarkdownFormat<cr>", "Format"},
        ----g = {"<CMD>MarkdownGitHub<cr>", "GitHub"},
        ----h = {"<CMD>MarkdownHelp<cr>", "Help"},
    --wk.register({
        --["<leader>"] = {
        --m = {
            --name = "MarkDown",
                --r = { "<CMD>Telescope oldfiles<cr>", "Open Recent File" },
                --i = {"<CMD>MarkdownInsertLink<cr>", "Insert Link"},
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
