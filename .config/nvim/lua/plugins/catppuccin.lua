return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			show_end_of_buffer = false,
			flavour = "macchiato", -- latte, frappe, macchiato, mocha
			transparent_background = false, -- disables setting the background color.
			dim_inactive = {
				enabled = true, -- dims the background color of inactive window
				shade = "dark",
			},
			default_integrations = true,
		})
	end,
}
