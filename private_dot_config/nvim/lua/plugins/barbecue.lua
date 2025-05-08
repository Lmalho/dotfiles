return {
	"utilyre/barbecue.nvim",
	dependencies = {
		"SmiteshP/nvim-navic",
		"nvim-tree/nvim-web-devicons",
	},
	name = "barbecue",
	enabled = true,
	event = "LspAttach", -- Changed from BufEnter to LspAttach
	-- @type barbecue.Config
	opts = {
		theme = "catppuccin-mocha", -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
		show_navic = true,
		attach_navic = false, -- Added to prevent barbecue from attaching navic itself
		symbols = {
			separator = "/",
		},
	},
}
