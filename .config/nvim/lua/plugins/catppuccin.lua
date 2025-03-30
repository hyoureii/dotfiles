return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = function()
		require("catppuccin").setup ({
			transparent_background = true,
			vim.cmd("colorscheme catppuccin-macchiato")
		})
	end
}
