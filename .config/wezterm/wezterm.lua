local wezterm = require("wezterm")

local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.font = wezterm.font("Fira Code")

config.font_size = 15
config.line_height = 1.3

local theme = require("themes/rose-pine/main")
config.colors = theme.colors()
config.macos_window_background_blur = 20
config.window_background_opacity = 0.9

config.enable_tab_bar = false
config.enable_wayland = false

config.window_decorations = "RESIZE"
config.window_padding = {
	left = 6,
	right = 6,
	top = 6,
	bottom = 0,
}

return config
