return {
	"mikavilpas/yazi.nvim",
	event = "VimEnter",
	-- dependencies = { "folke/snacks.nvim", lazy = true },
	keys = {
		-- 👇 in this section, choose your own keymappings!
		{
			"-",
			mode = { "n" },
			"<cmd>Yazi<cr>",
			desc = "Open yazi at the current file",
		},
	},
	opts = {
		-- enable this if you want to open yazi instead of netrw.
		-- Note that if you enable this, you need to call yazi.setup() to
		-- initialize the plugin. lazy.nvim does this for you in certain cases.
		--
		-- If you are also using neotree, you may prefer not to bring it up when
		-- opening a directory:
		-- {
		--   "nvim-neo-tree/neo-tree.nvim",
		--   opts = {
		--     filesystem = {
		--       hijack_netrw_behavior = "disabled",
		--     },
		--   },
		-- }
		open_for_directories = true,

		-- highlight buffers in the same directory as the hovered buffer
		highlight_hovered_buffers_in_same_directory = false,

		-- the type of border to use for the floating window. Can be many values,
		-- including 'none', 'rounded', 'single', 'double', 'shadow', etc. For
		-- more information, see :h nvim_open_win
		yazi_floating_window_border = "none",
		future_features = {
			-- Neovim nightly 0.11 has deprecated `termopen` in favor of `jobstart`
			-- (https://github.com/neovim/neovim/pull/31343). By default on nightly,
			-- this option is `false` and `jobstart` is used. Some users have
			-- reported issues with this, and can set this to `true` to keep using
			-- the old `termopen` for the time being.
			nvim_0_10_termopen_fallback = false,
		},
		integrations = {
			grep_in_directory = function(directory)
				require("fzf-lua").live_grep({ cwd = directory })
			end,
		},
	},
	-- 👇 if you use `open_for_directories=true`, this is recommended
	init = function()
		-- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
		-- vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
	end,
}
