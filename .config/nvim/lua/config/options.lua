local options = {
	termguicolors = true,

	laststatus = 3, -- only use single statusline for all windows, default 2
	ruler = false, -- disable extra numbering
	signcolumn = "yes", -- always show sign column

	number = true,
	relativenumber = true, -- enable relative number
	cursorline = true, -- highlight line under cursor
	scrolloff = 10, -- amount of lines preserved before scrolling

	expandtab = true, -- use spaces instead of tabs
	shiftwidth = 4, -- used for auto and manual indenting
	tabstop = 4, -- visual width (ws) of tabs
	softtabstop = 4, -- actual spaces of tabs

	smarttab = true, -- auto tab works on backspace
	autoindent = true, -- auto indent on newlines
	smartindent = true, -- make autoindenting better
	breakindent = true, -- wrapped line would still respect indentation

	showmode = false, -- already in the status bar
	showcmd = false, -- disable the cmd line below status bar
	undofile = true, -- undo history on disk
	confirm = true, -- confirm instead just showing error msg
	mouse = "a", -- enable mouse

	ignorecase = true, -- ignore case on searching
	smartcase = true, -- automatically detect if uppercases are intended

	swapfile = false, -- dont use swap file
	updatetime = 200, -- time to wait for hover
	timeoutlen = 1000, -- time to wait for keybinds (kinda useless with which-key)

	splitright = true, -- vertical split on the right
	splitbelow = true, -- horizontal split on the bottom

	foldmethod = "expr", -- using expression to get fold level of a line
	foldlevel = 99, -- start with all folds open
	foldexpr = "nvim_treesitter#foldexpr()",

	wrap = false, -- no line wrap
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

-- sets nvim to use system's clipboard
-- uses vim.schedule so that multiple write
-- attempts to clipboard will be serialized
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)
