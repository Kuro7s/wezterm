local wezterm = require 'wezterm'

local config = {}

config.color_scheme = 'Catppuccin Mocha'
config.default_prog = { 'nu' }
config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.hide_tab_bar_if_only_one_tab = true

return config
