local wezterm = require 'wezterm'

local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
    config = wezterm.config_builder()
end

local rose_pine_theme = require 'rose-pine-theme.lua.rose-pine'

config.colors = rose_pine_theme.colors()
config.window_frame = rose_pine_theme.window_frame()

config.default_prog = { 'nu' }
config.font = wezterm.font 'CaskaydiaCove Nerd Font'
config.font_size = 10
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
config.hide_mouse_cursor_when_typing = false
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

wezterm.on('format-window-title', function()
    return 'WezTerm'
end)

return config
