return {
	"neanias/everforest-nvim",
	version = false,
	lazy = false,
	priority = 1000,
	config = function()
		require("everforest").setup({
			---Controls the "hardness" of the background. Options are "soft", "medium" or "hard".
			---Default is "medium".
			background = "medium",
			---Dim inactive windows. Only works in Neovim. Can look a bit weird with Telescope.
			---
			---When this option is used in conjunction with show_eob set to `false`, the
			---end of the buffer will only be hidden inside the active window. Inside
			---inactive windows, the end of buffer filler characters will be visible in
			---dimmed symbols. This is due to the way Vim and Neovim handle `EndOfBuffer`.
			dim_inactive_windows = true,
			---The contrast of line numbers, indent lines, etc. Options are `"high"` or
			---`"low"` (default).
			ui_contrast = "low",

			---@param hl Highlights
			---@param palette Palette
			on_highlights = function(hl, palette)
				hl.TreesitterContext = { bg = palette.bg1 }
				hl.TreesitterContextLineNumber = { bg = palette.bg1 }
			end,
			---You can override colours in the palette to use different hex colours.
			---This function will be called once the base and background colours have
			---been mixed on the palette.
			---@param palette Palette
			colours_override = function(palette) end,
		})
	end,
}
