-- Oxocarbon Dark Theme for WizTerm
-- Origin: https://github.com/nyoom-engineering/oxocarbon

local wezterm = require("wezterm")

local OxocarbonDark = {}

-- Define the color palette
local palette = {
	background = "#161616",
	foreground = "#ffffff",
	cursor_bg = "#ffffff",
	cursor_border = "#ffffff",
	cursor_fg = "#161616",

	ansi = {
		"#262626", -- Black
		"#ee5396", -- Red
		"#42be65", -- Green
		"#ffe97b", -- Yellow
		"#33b1ff", -- Blue
		"#ff7eb6", -- Magenta
		"#3ddbd9", -- Cyan
		"#dde1e6", -- White
	},

	brights = {
		"#393939", -- Bright Black
		"#ee5396", -- Bright Red
		"#42be65", -- Bright Green
		"#ffe97b", -- Bright Yellow
		"#33b1ff", -- Bright Blue
		"#ff7eb6", -- Bright Magenta
		"#3ddbd9", -- Bright Cyan
		"#ffffff", -- Bright White
	},

	tab_bar_background = "#262626",

	active_tab = {
		bg_color = "#161616",
		fg_color = "#ffffff",
		intensity = "Normal",
		italic = false,
		strikethrough = false,
		underline = "None",
	},

	inactive_tab = {
		bg_color = "#262626",
		fg_color = "#ffffff",
		intensity = "Normal",
		italic = false,
		strikethrough = false,
		underline = "None",
	},

	new_tab = {
		bg_color = "#262626",
		fg_color = "#ffffff",
		intensity = "Normal",
		italic = false,
		strikethrough = false,
		underline = "None",
	},
}

-- Define the colors configuration
function OxocarbonDark.colors()
	return {
		foreground = palette.foreground,
		background = palette.background,
		cursor_bg = palette.cursor_bg,
		cursor_border = palette.cursor_border,
		cursor_fg = palette.cursor_fg,
		selection_bg = "#2a283e", -- Optional: Customize as needed
		selection_fg = palette.foreground,

		-- ANSI colors
		ansi = palette.ansi,

		-- Bright ANSI colors
		brights = palette.brights,

		-- Tab bar configuration
		tab_bar = {
			background = palette.tab_bar_background,

			active_tab = palette.active_tab,
			inactive_tab = palette.inactive_tab,
			new_tab = palette.new_tab,

			-- Optional hover states (can be customized further)
			inactive_tab_hover = palette.active_tab,
			new_tab_hover = palette.active_tab,

			-- Fancy tab bar specific settings
			inactive_tab_edge = palette.brights[2], -- Example: Using Bright Red
		},
	}
end

-- (Optional) Define window frame colors if using Fancy tab bar
function OxocarbonDark.window_frame()
	return {
		active_titlebar_bg = palette.background,
		inactive_titlebar_bg = palette.tab_bar_background,
	}
end

-- (Optional) Metadata for reference
local metadata = {
	name = "Oxocarbon Dark",
	origin_url = "https://github.com/nyoom-engineering/oxocarbon",
}

return OxocarbonDark
