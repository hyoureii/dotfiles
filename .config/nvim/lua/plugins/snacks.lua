return {
	"folke/snacks.nvim",
	priority = 1000,
	opts = {
		---@class snacks.dashboard.Config
		---@field enabled? boolean
		dashboard = {
			enabled = true,
			width = 60,
			row = nil, -- dashboard position. nil for center
			col = nil, -- dashboard position. nil for center
			pane_gap = 4, -- empty columns between vertical panes
			preset = {
				pick = nil,
				keys = {},
				header = [[
███╗   ██╗██╗   ██╗ ██████╗████████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║╚██╗ ██╔╝██╔════╝╚══██╔══╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║ ╚████╔╝ ██║        ██║   ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║  ╚██╔╝  ██║        ██║   ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║   ██║   ╚██████╗   ██║   ╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝   ╚═╝    ╚═════╝   ╚═╝    ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
			},
			formats = {
				footer = { "%s", align = "center" },
				header = { "%s", align = "center" },
			},
			sections = {
				{ section = "header" },
				{ section = "startup" },
			},
		},
		---@class snacks.indent.Config
		---@field enabled? boolean
	},
}
