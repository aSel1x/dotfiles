-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.
config.font = wezterm.font_with_fallback({
	"Hack Nerd Font",
	"Symbols Nerd Font", -- на всякий случай fallback
})

config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true

config.keys = {
	{ mods = "OPT", key = "LeftArrow", action = wezterm.action.SendKey({ mods = "ALT", key = "b" }) },
	{ mods = "OPT", key = "RightArrow", action = wezterm.action.SendKey({ mods = "ALT", key = "f" }) },
	{ mods = "CMD", key = "LeftArrow", action = wezterm.action.SendKey({ mods = "CTRL", key = "a" }) },
	{ mods = "CMD", key = "RightArrow", action = wezterm.action.SendKey({ mods = "CTRL", key = "e" }) },
	{ mods = "CMD", key = "Backspace", action = wezterm.action.SendKey({ mods = "CTRL", key = "u" }) },
	{ mods = "CMD|OPT", key = "LeftArrow", action = wezterm.action.ActivateTabRelative(-1) },
	{ mods = "CMD|OPT", key = "RightArrow", action = wezterm.action.ActivateTabRelative(1) },
	{ mods = "CMD|SHIFT", key = "LeftArrow", action = wezterm.action.ActivateTabRelative(-1) },
	{ mods = "CMD|SHIFT", key = "RightArrow", action = wezterm.action.ActivateTabRelative(1) },
}

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 15
config.color_scheme = "Catppuccin Mocha"
config.window_decorations = "RESIZE"

-- Finally, return the configuration to wezterm:
return config
