return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"rust",
				"bash",
				"lua",
				"luadoc",
				"vim",
				"vimdoc",
				"query",
				"javascript",
				"typescript",
				"html",
				"css",
				"markdown",
				"markdown_inline",
				"hyprlang",
				"regex",
			},
			auto_install = false,
			indent = { enable = true },
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<Enter>",
					node_incremental = "<Enter>",
					scope_incremental = false,
					node_decremental = "<S-Enter>",
				},
			},
		})
	end,
}
