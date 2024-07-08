local hslutil = require("horizon-extended.hsl")
local hsl = hslutil.hslToHex
local M = {}

-- @class Dark Color Palette
M.dark = {
	bg0 = hsl(228, 15, 15),
	bg1 = hsl(228, 15, 13),
	bg2 = hsl(228, 15, 11),
	fg0 = hsl(228, 15, 85),
	fg1 = hsl(228, 15, 75),
	fg2 = hsl(228, 15, 65),
	mg0 = hsl(228, 15, 50),
	mg1 = hsl(228, 15, 40),
	mg2 = hsl(228, 15, 30),
	pink = hsl(350, 98, 68),
	orange = hsl(9, 78, 73),
	peach = hsl(25, 91, 79),
	yellow = hsl(39, 100, 76),
	green = hsl(98, 51, 65),
	blue = hsl(185, 67, 44),
	purple = hsl(279, 58, 66),
	none = "NONE",
}

function M.setup(opts)
	opts = opts or {}
	local config = require("horizon-extended.config")

	local palette = M.dark
	if type(palette) == "function" then
		palette = palette()
	end
	return palette
end

return M
