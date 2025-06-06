-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save the current buffer" })

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Center when jumping
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true })
vim.api.nvim_set_keymap("n", "n", "nzz", { noremap = true })
vim.api.nvim_set_keymap("n", "N", "Nzz", { noremap = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move current line down
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv") -- Move current line up

vim.keymap.set("n", "<leader>v", ":vsplit<CR>", { desc = "Split vertically" })
-- Close buffer
vim.api.nvim_set_keymap("n", "<leader>b", ":bdelete!<CR>", { noremap = true, desc = "Close the current buffer" })

-- Bufferline
vim.api.nvim_set_keymap("n", "gb", "<cmd>BufferLinePick<CR>", { noremap = true, desc = "Pick a buffer" })
vim.api.nvim_set_keymap(
	"n",
	"<Tab>",
	"<cmd>BufferLineCycleNext<CR>",
	{ noremap = true, desc = "Cycle to the next buffer" }
)
vim.api.nvim_set_keymap(
	"n",
	"<S-Tab>",
	"<cmd>BufferLineCyclePrev<CR>",
	{ noremap = true, desc = "Cycle to the previous buffer" }
)

-- Copilot
vim.api.nvim_set_keymap("n", "<leader>ac", ":Copilot enable<CR>", { noremap = true, desc = "Copilot Enable" })
vim.api.nvim_set_keymap("n", "<leader>aC", ":Copilot disable<CR>", { noremap = true, desc = "Copilot Disable" })
-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- quickfix list
vim.api.nvim_set_keymap("n", "[q", ":cnext<CR>", { desc = "Next quickfix item" })
vim.api.nvim_set_keymap("n", "]q", ":cprev<CR>", { desc = "Previous quickfix item" })
-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_set_keymap("i", "jj", "<Esc>", { desc = "Exit insert mode" })

-- Obsidian
vim.api.nvim_set_keymap("n", "<leader>on", ":Obsidian new<CR>", { noremap = true, desc = "Obsidian new note" })
vim.api.nvim_set_keymap("n", "<leader>os", ":Obsidian search<CR>", { noremap = true, desc = "Obsidian search notes" })
vim.api.nvim_set_keymap("n", "<leader>ot", ":ObsidianTags<CR>", { noremap = true, desc = "Obsidian search tags" })
vim.api.nvim_set_keymap(
	"n",
	"<leader>of",
	":ObsidianQuickSwitch<CR>",
	{ noremap = true, desc = "Obsidian quick switch" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>od",
	":ObsidianToday<CR>",
	{ noremap = true, desc = "Obsidian Today's daily note" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>oc",
	":ObsidianToggleCheckbox<CR>",
	{ noremap = true, desc = "Obsidian toggle checkbox" }
)
-- Register Copilot
vim.api.nvim_set_keymap("i", "<C-a>", 'copilot#Accept("<CR>")', { expr = true, silent = true, desc = "Copilot Accept" })
vim.api.nvim_set_keymap("i", "<C-e>", "copilot#Dismiss()", { expr = true, silent = true, desc = "Copilot Dismiss" })
-- vim: ts=2 sts=2 sw=2 et
