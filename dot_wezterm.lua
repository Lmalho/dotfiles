local wezterm = require("wezterm")
local act = wezterm.action

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 13
config.window_background_opacity = 0.95

-- appearance
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
-- makes cursor blink
config.default_cursor_style = "BlinkingBlock"
config.disable_default_key_bindings = true

config.mouse_bindings = mouse_bindings

config.keys = {
	{ key = "V", mods = "CTRL", action = act.PasteFrom("Clipboard") },
	{ key = "V", mods = "CTRL", action = act.PasteFrom("PrimarySelection") },
}

return config
