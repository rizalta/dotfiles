local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 14

config.color_scheme = "Catppuccin Mocha"

config.enable_tab_bar = false

config.default_cursor_style = "BlinkingBar"

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.8
config.macos_window_background_blur = 10
config.window_frame = {
	border_left_width = 2,
	border_right_width = 2,
	border_top_height = 2,
	border_bottom_height = 2,
	border_left_color = "#313244",
	border_right_color = "#313244",
	border_top_color = "#313244",
	border_bottom_color = "#313244",
}

config.window_padding = {
	top = 30,
	left = 30,
	right = 30,
	bottom = 30,
}

return config
