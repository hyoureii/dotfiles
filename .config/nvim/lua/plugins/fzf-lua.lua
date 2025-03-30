return {
	"ibhagwan/fzf-lua",
	event = "VimEnter",
	-- optional for icon support
	-- dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	dependencies = { "echasnovski/mini.icons" },
	opts = { "default", winopts = {
		border = "solid",
		preview = {
			border = "solid",
		},
	} },
	keys = {
		{
			"<leader>sf",
			mode = "n",
			function()
				require("fzf-lua").files()
			end,
			desc = "[S]earch [F]iles",
		},
		{
			"<leader>sh",
			mode = "n",
			function()
				require("fzf-lua").helptags()
			end,
			desc = "[S]earch Neovim's [H]elp",
		},
		{
			"<leader>sk",
			mode = "n",
			function()
				require("fzf-lua").keymaps()
			end,
			desc = "[S]earch [K]eymaps",
		},
		{
			"<leader>ss",
			mode = "n",
			function()
				require("fzf-lua").builtin()
			end,
			desc = "[S]earch [S]elect FZF",
		},
		{
			"<leader>sd",
			mode = "n",
			function()
				require("fzf-lua").lsp_document_diagnostics()
			end,
			desc = "[S]earch [D]iagnostics",
		},
		{
			"<leader>sb",
			mode = "n",
			function()
				require("fzf-lua").buffers()
			end,
			desc = "[S]earch open [B]uffers",
		},
		{
			"<leader>sw",
			mode = "n",
			function()
				require("fzf-lua").grep_cword()
			end,
			desc = "[S]earch current [W]ord",
		},
		{
			"<leader>sW",
			mode = "n",
			function()
				require("fzf-lua").grep_cWORD()
			end,
			desc = "[S]earch current [W]ORD",
		},
		{
			"<leader>sg",
			mode = "n",
			function()
				require("fzf-lua").live_grep()
			end,
			desc = "[S]earch by [G]rep",
		},
		{
			"<leader>s/",
			mode = "n",
			function()
				require("fzf-lua").lgrep_curbuf()
			end,
			desc = "[S]earch [/] Live Grep current buffer",
		},
		{
			"<leader>sn",
			mode = "n",
			function()
				require("fzf-lua").files({ cwd = vim.fn.stdpath("config") })
			end,
			desc = "[S]earch [N]eovim files",
		},
		{
			"<leader>g",
			mode = "v",
			function()
				require("fzf-lua").grep_visual()
			end,
			desc = "[G]rep selection",
		},
	},
}
