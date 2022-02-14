 --this is a config example
require('code_runner').setup {
    term = {
        position = "belowright",
        size = 13
    },
    --filetype_path = "$HOME/.config/nvim/code_runner.json",
    --project_path = "$HOME/.config/nvim/projects.json"
    filetype = {
        python = "python -u",
    },
}
vim.g.fileCommands = {
    python = 'python'
}
--
--require('code_runner').setup {
  --term = {
    --size = 15,
    --position = "belowright",
  --},
  --filetype = {
    --python = "python -u",
  --},
--}
--vim.g.fileCommands = {
    --python = 'python'
--}
