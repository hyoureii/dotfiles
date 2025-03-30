return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		lsp = {
			-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
			},
		},
		-- you can enable a preset for easier configuration
		presets = {
			bottom_search = false, -- use a classic bottom cmdline for search
			command_palette = false, -- position the cmdline and popupmenu together
			long_message_to_split = false, -- long messages will be sent to a split
			inc_rename = false, -- enables an input dialog for inc-rename.nvim
			lsp_doc_border = false, -- add a border to hover docs and signature help
		},
		---@class NoiceConfigViews: table<string, NoiceViewOptions>
		views = {
			cmdline_popup = {
				position = {
					row = "40%",
					col = "50%",
				},
				size = {
					min_width = 60,
					width = "auto",
					height = "auto",
				},
				border = {
					style = "solid",
					padding = { 0, 3 },
				},
				filter_options = {},
				win_options = {
					winhighlight = {
						Normal = "NormalFloat",
						FloatBorder = "NormalFloat",
					},
				},
			},
			mini = {
				position = {
					row = -2,
				},
				border = {
					style = "solid",
					padding = { 0, 3 },
				},
				win_options = {
					winhighlight = {
						Normal = "NormalFloat",
						FloatBorder = "NormalFloat",
					},
				},
			},
		},
	},
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		-- "rcarriga/nvim-notify",
	},
}
