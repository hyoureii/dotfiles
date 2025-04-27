return {
	"saghen/blink.cmp",
	dependencies = {
		{ "nvim-tree/nvim-web-devicons" },
		{ "rafamadriz/friendly-snippets" },
		{ "onsails/lspkind.nvim" },
	},
	version = "1.*",

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = {
			-- set to 'none' to disable the 'default' preset
			preset = "none",

			["<CR>"] = {
				function(cmp)
					if cmp.is_menu_visible() then
						return cmp.select_and_accept()
					elseif cmp.snippet_active() then
						return cmp.snippet_forward()
					end
				end,
				"fallback",
			},
			["<S-CR>"] = { "snippet_backward" },

			["<C-p>"] = { "scroll_documentation_up" },
			["<C-n>"] = { "scroll_documentation_down" },

			["<C-j>"] = {
				function(cmp)
					if cmp.is_menu_visible() then
						return cmp.select_next()
					else
						return cmp.show()
					end
				end,
			},
			["<C-k>"] = { "select_prev" },
		},

		appearance = {
			nerd_font_variant = "mono",
		},

		-- (Default) Only show the documentation popup when manually triggered
		completion = {
			keyword = { range = "full" },
			documentation = { auto_show = true, auto_show_delay_ms = 500 },
			ghost_text = { enabled = true },
			accept = { auto_brackets = { enabled = false } },
			list = {
				selection = {
					preselect = true,
					auto_insert = false,
				},
			},
			menu = {
				auto_show = true,
				draw = {
					columns = {
						{ "label", "label_description", gap = 1 },
						{ "kind_icon", "kind", gap = 1 },
						{ "source_name" },
					},
					components = {
						kind_icon = {
							text = function(ctx)
								local lspkind = require("lspkind")
								local icon = ctx.kind_icon
								if vim.tbl_contains({ "Path" }, ctx.source_name) then
									local dev_icon, _ = require("nvim-web-devicons").get_icon(ctx.label)
									if dev_icon then
										icon = dev_icon
									end
								else
									icon = require("lspkind").symbolic(ctx.kind, {
										mode = "symbol",
									})
								end

								return icon .. ctx.icon_gap
							end,

							highlight = function(ctx)
								local hl = ctx.kind_hl
								if vim.tbl_contains({ "Path" }, ctx.source_name) then
									local dev_icon, dev_hl = require("nvim-web-devicons").get_icon(ctx.label)
									if dev_icon then
										hl = dev_hl
									end
								end
								return hl
							end,
						},
						kind = {
							highlight = function(ctx)
								local hl = ctx.kind_hl
								if vim.tbl_contains({ "Path" }, ctx.source_name) then
									local dev_icon, dev_hl = require("nvim-web-devicons").get_icon(ctx.label)
									if dev_icon then
										hl = dev_hl
									end
								end
								return hl
							end,
						},
					},
				},
			},
		},

		signature = { enabled = true },

		sources = {
			default = { "lazydev", "lsp", "path", "snippets", "buffer" },
			providers = {
				lazydev = {
					name = "LazyDev",
					module = "lazydev.integrations.blink",
					-- make lazydev completions top priority (see `:h blink.cmp`)
					score_offset = 100,
				},
			},
		},
		fuzzy = { implementation = "prefer_rust" },
	},
	opts_extend = { "sources.default" },
}
