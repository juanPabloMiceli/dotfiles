--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jj', '<Esc>', {})

-- Toggle nvim-tree
map('n', '<leader>n', ':NvimTreeToggle<Enter>', {})

-- Toggle lines indent
map('n', 'L', ':IndentLinesToggle<Enter>', {})

-- Togge undo tree
map('n', '<leader>ut', ':UndotreeToggle<Enter>', {})

map('n', '<leader>fo', ':foldopen<Enter>', {})
map('n', '<leader>fc', ':foldclose<Enter>', {})

-- FloaTerm configuration
map('n', "<leader>ft", ":FloatermNew --name=myfloat --height=0.8 --width=0.7 --autoclose=2 fish <CR> ", {})
map('n', "<leader>t", ":FloatermToggle myfloat<CR>", {})
map('t', "<Esc>", "<C-\\><C-n>:q<CR>", {})

-- place this in one of your configuration file(s)
local hop = require('hop')
local directions = require('hop.hint').HintDirection
vim.keymap.set('', 'f', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, {remap=true})
vim.keymap.set('', 'F', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, {remap=true})
vim.keymap.set('', 't', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, {remap=true})
vim.keymap.set('', 'T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, {remap=true})
vim.keymap.set('', '<leader>g', function()
  hop.hint_lines({ current_line_only = false })
end, {remap=true})
vim.keymap.set('', '<leader>/', function()
  hop.hint_patterns({ current_line_only = false})
end, {remap=true})
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- vimdap
local dap = require'dap'
local dui = require'dapui'

vim.keymap.set("n", "<F5>", dap.continue, {})
vim.keymap.set("n", "<F2>", dap.step_over, {})
vim.keymap.set("n", "<F1>", dap.step_into, {})
vim.keymap.set("n", "<F3>", dap.step_out, {})
vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, {})
vim.keymap.set("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", {})
vim.keymap.set("n", "<leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", {})
vim.keymap.set("n", "<leader>dr", dap.repl.open, {})
vim.keymap.set("n", "<leader>k", ":Telescope keymaps<CR>", {})
vim.keymap.set("n", "<leader>dd", dui.toggle, {})
