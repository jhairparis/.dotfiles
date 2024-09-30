local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("Hack Nerd Font")
config.font_size = 14

config.enable_tab_bar = false
config.window_decorations = "NONE"
config.window_background_opacity = 0.98

config.color_scheme = 'Aci (Gogh)'

local padding = {
    left = '1cell',
    right = '1cell',
    top = '0.5cell',
    bottom = '0.5cell',
}

wezterm.on('update-status', function(window, pane)
    local overrides = window:get_config_overrides() or {}
    if string.find(pane:get_title(), '^n-vi-m-.*') then
        overrides.window_padding = {
            left = 0,
            right = 0,
            top = 0,
            bottom = 0
        }
    else
        overrides.window_padding = padding
    end
    window:set_config_overrides(overrides)
end)

return config
