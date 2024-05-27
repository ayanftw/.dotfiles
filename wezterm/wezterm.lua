local wezterm = require("wezterm")
local config = {}

config.window_decorations = "RESIZE"
config.font = wezterm.font("Source Code Pro")
config.font_size = 14
config.window_background_opacity = 0.75
config.text_background_opacity = 0.8

config.color_scheme = "nightfox"

config.use_dead_keys = false
config.hide_tab_bar_if_only_one_tab = true
config.adjust_window_size_when_changing_font_size = false

config.scrollback_lines = 5000

return config
