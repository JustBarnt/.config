local wezterm = require("wezterm")
local action = wezterm.action
local config = wezterm.config_builder()

--[[ Default Launch Program ]]
-- config.default_prog = { 'top' } -- The default wezterm uses, but you could say use "nvim"

--[[ UI and Font Configuration ]]
config.font = wezterm.font_with_fallback({
	{
		family = "MonoLisa Custom",
		weight = "Medium",
	},
	"FiraCode Nerd Font",
})
config.font_size = 12
config.color_scheme = "tokyonight_storm"

--[[ GUI Opts]]
config.use_fancy_tab_bar = false
config.enable_scroll_bar = false
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.freetype_load_target = "HorizontalLcd"
config.window_decorations = "RESIZE"

--[[ Keymaps ]]
config.leader = { key = "Space", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = {
	--[[ Pane | Window Management]]
	{
		key = "F11",
		action = action.ToggleFullScreen,
	},
	--[[ Pane Splitting ]]
	{
		key = "|",
		mods = "LEADER|SHIFT",
		action = action.SplitPane({
			direction = "Right",
			size = { Percent = 50 },
		}),
	},
	{
		key = "|",
		mods = "LEADER|SHIFT|ALT",
		action = action.SplitPane({
			direction = "Down",
			size = { Percent = 50 },
		}),
	},
	--[[ Pane Switching ]]
	{
		key = "h",
		mods = "ALT|SHIFT",
		action = action.ActivatePaneDirection("Left"),
	},
	{
		key = "j",
		mods = "ALT|SHIFT",
		action = action.ActivatePaneDirection("Down"),
	},
	{
		key = "k",
		mods = "ALT|SHIFT",
		action = action.ActivatePaneDirection("Up"),
	},
	{
		key = "l",
		mods = "ALT|SHIFT",
		action = action.ActivatePaneDirection("Right"),
	},
	--[[ Size Adjustments]]
	{
		key = "w",
		mods = "LEADER",
		action = action.CloseCurrentPane({ confirm = false }),
	},
	{
		key = "h",
		mods = "LEADER",
		action = action.AdjustPaneSize({ "Left", 5 }),
	},
	{
		key = "l",
		mods = "LEADER",
		action = action.AdjustPaneSize({ "Right", 5 }),
	},
	{
		key = "j",
		mods = "LEADER",
		action = action.AdjustPaneSize({ "Down", 5 }),
	},
	{
		key = "k",
		mods = "LEADER",
		action = action.AdjustPaneSize({ "Up", 5 }),
	},
}

return config
