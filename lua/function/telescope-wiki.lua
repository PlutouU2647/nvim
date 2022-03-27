local finders = require "telescope.finders"
local pickers = require "telescope.pickers"
local sorters = require "telescope.sorters"
local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"
local scan = require("plenary.scandir")

-- theme
local dropdown = require "telescope.themes".get_dropdown()
local ivy = require "telescope.themes".get_ivy()
local cursor = require "telescope.themes".get_cursor()
local mini = {
    layout_strategy = "vertical",
    layout_config = {
        height = 20,
        width = 0.3,
        prompt_position = 'top'
    },
    sorting_strategy = "ascending",
}

local Pinfo = {
    fexists = false,
    title = "",
    filename = "",
    filepath = "",
    root_dir = "",
    sub_dir = "",
    is_daily_or_weekly = false,
    is_daily = false,
    is_weekly = false,
    template = "",
    calendar_info = nil,
}

function Pinfo:new(opts)
    opts = opts or {}

    local object = {}
    setmetatable(object, self)
    self.__index = self
    if opts.filepath then
        return object:resolve_path(opts.filepath, opts)
    end
    if opts.title ~= nil then
        return object:resolve_link(opts.title, opts)
    end
    return object
end
local function file_exists(fname)
    if fname == nil then
        return false
    end

    local f = io.open(fname, "r")
    if f ~= nil then
        io.close(f)
        return true
    else
        return false
    end
end

--local picker = pickers.new(opts, {
    --finder = finders.new_table({
        --results = file_list,
        --entry_maker = entry_maker,
    --}),
    --sorter = conf.generic_sorter(opts),

    --previewer = previewer,
--})

function enter(prompt_bufnr)
    local selected = action_state.get_selected_entry()
    print(vim.inspect(selected))
    local pinfo = Pinfo:new({
        filepath = selection.value,
        opts,
    })
    --vim.api.nvim_put(
        --{ "[[" .. pinfo.title .. "]]" },
        --"",
        --true,
        --true
    --)
    actions.close(prompt_bufnr)


end

--local picker = pickers.new(opts, {
    --finder = finders.new_table({
        --results = file_list,
        --entry_maker = entry_maker,
    --}),
    --sorter = conf.generic_sorter(opts),

    --previewer = previewer,
--})
local input ={'find_files_sorted', ''}

local opts = {
    prompt_title = "Insert link to note",

    --finder = finders.new_table{'grubox', "deus", 'tokyonight'},
    --finder = finders.
    -- current working directory
    finder = finders.new_oneshot_job(input),
        --find_command,
    
    sorter = sorters.get_generic_fuzzy_sorter({}),
    
    attach_mappings = function(prompt_bufnr, map)
        map('i', '<CR>', enter)
        return true
    end,
}






local colors = pickers.new(dropdown, opts)

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
--
