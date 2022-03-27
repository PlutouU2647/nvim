local finders = require "telescope.finders"
local pickers = require "telescope.pickers"
local sorters = require "telescope.sorters"


local opts = {
    finder = finders.new_table{'grubox', "deus", 'tokyonight'},
    sorter = sorters.get_generic_fuzzy_sorter()
}
local colors = pickers.new(opts)
colors:find()

--local function InsertLink(opts)
--
    --opts = opts or {}
    --opts.insert_after_inserting = opts.insert_after_inserting
        --or M.Cfg.insert_after_inserting
    --opts.close_after_yanking = opts.close_after_yanking
        --or M.Cfg.close_after_yanking
    --opts.subdirs_in_links = opts.subdirs_in_links or M.Cfg.subdirs_in_links

    --if not global_dir_check() then
        --return
    --end

    --find_files_sorted({
        --prompt_title = "Insert link to note",
        --cwd = M.Cfg.home,
        --attach_mappings = function(prompt_bufnr, map)
            --actions.select_default:replace(function()
                --actions.close(prompt_bufnr)
                --local selection = action_state.get_selected_entry()
                --local pinfo = Pinfo:new({
                    --filepath = selection.value,
                    --opts,
                --})
                --vim.api.nvim_put(
                    --{ "[[" .. pinfo.title .. "]]" },
                    --"",
                    --true,
                    --true
                --)
                --if opts.i then
                    --vim.api.nvim_feedkeys("A", "m", false)
                --end
            --end)
            --map("i", "<c-y>", picker_actions.yank_link(opts))
            --map("i", "<c-i>", picker_actions.paste_link(opts))
            --map("n", "<c-y>", picker_actions.yank_link(opts))
            --map("n", "<c-i>", picker_actions.paste_link(opts))
            --map("i", "<c-cr>", picker_actions.paste_link(opts))
            --map("n", "<c-cr>", picker_actions.paste_link(opts))
            --return true
        --end,
        --find_command = M.Cfg.find_command,
    --})
--end
