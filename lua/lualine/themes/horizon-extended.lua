local c = require("horizon-extended.colors").setup()

local theme = {}

theme = {
	normal = {
		a = { bg = c.red, fg = c.bg0 },
		b = { bg = c.bg0, fg = c.fg0 },
		c = { bg = c.bg0, fg = c.fg0 },
	},
	insert = {
		a = { bg = c.green, fg = c.bg0 },
		b = { bg = c.bg0, fg = c.fg0 },
		c = { bg = c.bg0, fg = c.fg0 },
	},
	visual = {
		a = { bg = c.purple, fg = c.bg0 },
		b = { bg = c.bg0, fg = c.fg0 },
		c = { bg = c.bg0, fg = c.fg0 },
	},
	replace = {
		a = { bg = c.blue, fg = c.bg0 },
		b = { bg = c.bg0, fg = c.fg0 },
		c = { bg = c.bg0, fg = c.fg0 },
	},
	command = {
		a = { bg = c.yellow, fg = c.bg0 },
		b = { bg = c.bg0, fg = c.fg0 },
		c = { bg = c.bg0, fg = c.fg0 },
	},
	innactive = {
		a = { bg = c.bg0, fg = c.fg0 },
		b = { bg = c.bg0, fg = c.fg0 },
		c = { bg = c.bg0, fg = c.fg0 },
	},
}

return theme
