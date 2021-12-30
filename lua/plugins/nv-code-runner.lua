-- this is a config example
require('code_runner').setup {
    term = {
        position = "belowright",
        size = 8
    },
    --filetype_path = "/home/myuser/.config/nvim/code_runner.json",
    --project_path = "/home/myuser/.config/nvim/projects.json"
}
vim.g.fileCommands = {
    python = 'python'
}
