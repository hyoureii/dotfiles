return {
	"folke/snacks.nvim",
	priority = 1000,
	---@type snacks.Config
	opts = {
		---@class snacks.dashboard.Config
		---@field enabled? boolean
		---@field sections snacks.dashboard.Section
		---@field formats table<string, snacks.dashboard.Text|fun(item:snacks.dashboard.Item, ctx:snacks.dashboard.Format.ctx):snacks.dashboard.Text>
		dashboard = {
			width = 60,
			row = nil, -- dashboard position. nil for center
			col = nil, -- dashboard position. nil for center
			pane_gap = 4, -- empty columns between vertical panes
			autokeys = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", -- autokey sequence
			-- These settings are used by some built-in sections
			preset = {
				-- Defaults to a picker that supports `fzf-lua`, `telescope.nvim` and `mini.pick`
				---@type fun(cmd:string, opts:table)|nil
				pick = nil,
				-- Used by the `keys` section to show keymaps.
				-- Set your custom keymaps here.
				-- When using a function, the `items` argument are the default keymaps.
				---@type snacks.dashboard.Item[]
				keys = {},
				-- Used by the `header` section
				header = [[
███╗   ██╗██╗   ██╗ ██████╗████████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║╚██╗ ██╔╝██╔════╝╚══██╔══╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║ ╚████╔╝ ██║        ██║   ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║  ╚██╔╝  ██║        ██║   ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║   ██║   ╚██████╗   ██║   ╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝   ╚═╝    ╚═════╝   ╚═╝    ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
			},
			-- item field formatters
			formats = {
				footer = { "%s", align = "center" },
				header = { "%s", align = "center" },
			},
			sections = {
				{ section = "header" },
				{ section = "startup" },
			},
		},
	},
}
