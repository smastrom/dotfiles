-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.font = wezterm.font("JetBrains Mono Medium")
config.color_scheme = "Ayu Dark (Gogh)"
config.window_close_confirmation = "NeverPrompt"
config.freetype_load_target = "Light"
config.initial_rows = 40
config.initial_cols = 120
config.keys = {
  {key="LeftArrow", mods="OPT", action=wezterm.action{SendString="\x1bb"}},
  {key="RightArrow", mods="OPT", action=wezterm.action{SendString="\x1bf"}},
  {key="RightArrow", mods="SHIFT|CMD", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
  {key="DownArrow", mods="SHIFT|CMD", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
  {key="E", mods="CMD", action=wezterm.action{CloseCurrentPane={confirm=false}}},
}

return config
