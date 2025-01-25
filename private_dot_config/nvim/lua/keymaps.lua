-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>w', ':w<CR>', {
  desc = 'Save the current buffer',
})

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, {
  desc = 'Open diagnostic [Q]uickfix list',
})

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', {
  desc = 'Exit terminal mode',
})

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', {
  desc = 'Move focus to the left window',
})
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', {
  desc = 'Move focus to the right window',
})
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', {
  desc = 'Move focus to the lower window',
})
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', {
  desc = 'Move focus to the upper window',
})

-- Center when jumping
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', {
  noremap = true,
})
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', {
  noremap = true,
})
vim.api.nvim_set_keymap('n', 'n', 'nzz', {
  noremap = true,
})
vim.api.nvim_set_keymap('n', 'N', 'Nzz', {
  noremap = true,
})

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv") -- Move current line down
vim.keymap.set('v', 'K', ":m '>-2<CR>gv=gv") -- Move current line up

vim.keymap.set('n', '<leader>v', ':vsplit<CR>', {
  desc = 'Split vertically',
})
-- Close buffer
vim.api.nvim_set_keymap('n', '<leader>b', ':bdelete<CR>', {
  noremap = true,
  desc = 'Close the current buffer',
})

-- Copilot
vim.api.nvim_set_keymap('n', '<leader>ac', ':Copilot enable<CR>', {
  noremap = true,
  desc = 'Copilot Enable',
})
vim.api.nvim_set_keymap('n', '<leader>aC', ':Copilot disable<CR>', {
  noremap = true,
  desc = 'Copilot Disable',
})
-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', {
    clear = true,
  }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.keymap.set('n', '<leader>;a', "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = 'Add to Harpoon' })
vim.keymap.set('n', '<leader>;e', "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = 'Show Harpoon' })
vim.keymap.set('n', '<leader>;1', "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", { desc = 'Harpoon Buffer 1' })
vim.keymap.set('n', '<leader>;2', "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", { desc = 'Harpoon Buffer 2' })
vim.keymap.set('n', '<leader>;3', "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", { desc = 'Harpoon Buffer 3' })
vim.keymap.set('n', '<leader>;4', "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", { desc = 'Harpoon Buffer 4' })
vim.keymap.set('n', '<leader>;5', "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", { desc = 'Harpoon Buffer 5' })
vim.keymap.set('n', '<leader>;6', "<cmd>lua require('harpoon.ui').nav_file(6)<cr>", { desc = 'Harpoon Buffer 6' })
vim.keymap.set('n', '<leader>;7', "<cmd>lua require('harpoon.ui').nav_file(7)<cr>", { desc = 'Harpoon Buffer 7' })
vim.keymap.set('n', '<leader>;8', "<cmd>lua require('harpoon.ui').nav_file(8)<cr>", { desc = 'Harpoon Buffer 8' })
vim.keymap.set('n', '<leader>;9', "<cmd>lua require('harpoon.ui').nav_file(9)<cr>", { desc = 'Harpoon Buffer 9' })

-- vim: ts=2 sts=2 sw=2 et
