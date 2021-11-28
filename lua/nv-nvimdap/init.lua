-- '~/.local/share/nvim/site/pack/packer/start'
local dap = require('dap')
dap.adapters.python = {
  type = 'executable';
  --command = 'path/to/virtualenvs/debugpy/bin/python';
  args = { '-m', 'debugpy.adapter' };
  --args = os.getenv('HOME')..''
}
dap.configurations.python = {
    {
        type = 'python';
        request = 'launch';
        name = "Launch file";
        program = "${file}";
        pythonPath = function()
            return '/usr/bin/python'
        end;
    },
}

--dap.configurations.python = {
  --{
    ---- The first three options are required by nvim-dap
    --type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
    --request = 'launch';
    --name = "Launch file";

    ---- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

    --program = "${file}"; -- This configuration will launch the current file if used.
    --pythonPath = function()
      ---- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
      ---- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
      ---- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
      --local cwd = vim.fn.getcwd()
      --if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
        --return cwd .. '/venv/bin/python'
      --elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
        --return cwd .. '/.venv/bin/python'
      --else
        --return '/usr/bin/python'
      --end
    --end;
  --},
--}


vim.fn.sign_define('DapBreakpoint', {
  text = '⏎';
  texthl = '';
  linehl = '';
  numhl = '';
})

vim.fn.sign_define('DapStopped', {
  text = '1';
  texthl = '';
  linehl = '';
  numhl = '';
})


vim.api.nvim_set_keymap('n', '<Leader>dh', ":lua require'dap'.toggle_breakpoint()<CR>", {noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<Leader>d_', ":lua require'dap'.run_last()<CR>", {noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<Leader>dk', ":lua require'dap'.up()<CR>", {noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<Leader>dj', ":lua require'dap'.down()<CR>", {noremap = true, silent = false })








--'https://github.com/mfussenegger/nvim-dap'
-- No configuration found for `python`. You need to add configs to `dap.configurations.python` (See `:h dap-configuration`)
