local wezterm = require 'wezterm'

local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.color_scheme = 'Catppuccin Mocha'
config.default_prog = { 'nu' }
config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }
config.hide_mouse_cursor_when_typing = false
config.window_decorations = 'INTEGRATED_BUTTONS|RESIZE'
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}
config.window_close_confirmation = 'NeverPrompt'

local current_colors = wezterm.color.get_builtin_schemes()[config.color_scheme]
local curr_tab_colors = current_colors.tab_bar

config.window_frame = {
    inactive_titlebar_bg = curr_tab_colors.background,
    active_titlebar_bg = curr_tab_colors.background,
    inactive_titlebar_fg = curr_tab_colors.foreground,
    active_titlebar_fg = curr_tab_colors.foreground,
}

config.colors = {
    tab_bar = {
		background = curr_tab_colors.background,
        active_tab = {
            bg_color = current_colors.background,
            fg_color = current_colors.foreground,
        },
        inactive_tab = curr_tab_colors.inactive_tab,
        inactive_tab_hover = curr_tab_colors.active_tab,
        new_tab = curr_tab_colors.new_tab,
        new_tab_hover = curr_tab_colors.new_tab_hover
    }
}

wezterm.on('format-window-title', function()
    return 'WezTerm'
end)

return config
