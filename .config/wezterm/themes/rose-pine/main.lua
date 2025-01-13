local main = {}

local main_palette = {
	base = "#191724",
	overlay = "#26233a",
	muted = "#6e6a86",
	text = "#e0def4",
	love = "#eb6f92",
	gold = "#f6c177",
	rose = "#ebbcba",
	pine = "#31748f",
	foam = "#9ccfd8",
	iris = "#c4a7e7",
	highlight_high = "#524f67",
}

local main_active_tab = {
	bg_color = main_palette.overlay,
	fg_color = main_palette.text,
}

local main_inactive_tab = {
	bg_color = main_palette.base,
	fg_color = main_palette.muted,
}

main.colors = function()
	return {
		foreground = main_palette.text,
		background = main_palette.base,
		cursor_bg = main_palette.text,
		cursor_border = main_palette.text,
		cursor_fg = main_palette.highlight_high,
		selection_bg = "#2a283e",
		selection_fg = main_palette.text,

		ansi = {
			main_palette.overlay,
			main_palette.love,
			main_palette.pine,
			main_palette.gold,
			main_palette.foam,
			main_palette.iris,
			main_palette.rose,
			main_palette.text,
		},

		brights = {
			main_palette.muted,
			main_palette.love,
			main_palette.pine,
			main_palette.gold,
			main_palette.foam,
			main_palette.iris,
			main_palette.rose,
			main_palette.text,
		},

		tab_bar = {
			background = main_palette.base,
			active_tab = main_active_tab,
			inactive_tab = main_inactive_tab,
			inactive_tab_hover = main_active_tab,
			new_tab = main_inactive_tab,
			new_tab_hover = main_active_tab,
			inactive_tab_edge = main_palette.muted, -- (Fancy tab bar only)
		},
	}
end

main.window_frame = function() -- (Fancy tab bar only)
	return {
		active_titlebar_bg = main_palette.base,
		inactive_titlebar_bg = main_palette.base,
	}
end

return main
