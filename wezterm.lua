local wezterm = require 'wezterm'

local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.color_scheme = 'Catppuccin Mocha'
config.default_prog = { 'nu' }
config.font = wezterm.font {
    family = 'JetBrainsMono Nerd Font',
    harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
}
config.hide_mouse_cursor_when_typing = false
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}
config.skip_close_confirmation_for_processes_named = {
    'nu',
}

return config
