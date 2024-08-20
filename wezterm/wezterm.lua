local wezterm = require("wezterm") --[[@as Wezterm]]
local action = wezterm.action
local config = wezterm.config_builder()
local picture_path = "C:\\Users\\bwilliams\\Pictures\\"
local utils = require("utils.utils")

-- Other modules for wezterm
require("tabs").setup(config)
require("mouse").setup(config)
require("links").setup(config)
require("keys").setup(config)

-- Base
config.automatically_reload_config = true
config.default_prog = { "nu.exe" }
config.default_cwd = utils.checkDir("D:/CommSys") and "D:/CommSys" or "D:/Github"

local eldritch_wallpaper = utils.file_exists(picture_path .. "Eldritch1920x1080.png") and "Eldritch1920x1080.png" or "eldritch.png"

config.background = {
  {
    source = {
      Color = "#212337",
      -- Color = "#def678",
    },
    height = "100%",
    width = "100%",
  },
  {
    source = {
      File = picture_path .. eldritch_wallpaper,
    },
    width = "Cover",
    horizontal_align = "Center",
    opacity = 0.05,
  },
}

-- Watch for colorscheme changes
config.color_scheme_dirs = { wezterm.home_dir .. "/colors/Eldritch" }
config.color_scheme = "Eldritch"
wezterm.add_to_config_reload_watch_list(config.color_scheme_dirs[1] .. config.color_scheme .. ".toml")

config.underline_thickness = 3
config.underline_position = -6

if wezterm.target_triple:find("windows") then
  wezterm.on("gui-startup", function(cmd)
    local screen = wezterm.gui.screens().active
    local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
    local gui = window:gui_window()
    local width = 0.7 * screen.width
    local height = 0.7 * screen.height
    gui:set_inner_size(width, height)
    gui:set_position((screen.width - width) / 2, (screen.height - height) / 2)
  end)
end

-- Font Settings
config.font_size = 11.25
config.freetype_load_target = "HorizontalLcd"
---@diagnostic disable-next-line: assign-type-mismatch, missing-fields
config.font = wezterm.font({ family = "MonoLisaCustom Nerd Font", scale = 1, weight = "Medium" })
config.bold_brightens_ansi_colors = "BrightAndBold"
config.line_height = 1.1

-- Cursor
config.scrollback_lines = 10000

--- Command Pallete
config.command_palette_font_size = 13
config.command_palette_rows = 15
config.command_palette_fg_color = "#ebfafa"
config.command_palette_bg_color = "#323449"

-- UI Settings
config.window_padding = { left = 0, right = 0, top = 0, bottom = 2 }
config.integrated_title_buttons = { "Maximize", "Close" }
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

return config
