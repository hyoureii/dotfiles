return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "diff", "c", "bash", "lua", "luadoc", "vim", "vimdoc", "query", "javascript", "typescript", "html", "css", "markdown", "markdown_inline", "hyprlang", "regex" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },  

			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<Enter>",
					node_incremental = "<Enter>",
					scope_incremental = false,
					node_decremental = "<Backspace>",
				},
			},
		})
	end
}
