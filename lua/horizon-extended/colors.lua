local hslutil = require("horizon-extended.hsl")
local hsl = hslutil.hslToHex
local M = {}

-- @class Neo Color Palette
M.neo = {
	bg0 = hsl(228, 15, 16),
	bg1 = hsl(228, 15, 13),
	bg2 = hsl(228, 15, 11),
	bg3 = hsl(228, 15, 9),
	bg4 = hsl(228, 15, 7),
	fg0 = hsl(228, 15, 85),
	fg1 = hsl(228, 15, 75),
	fg2 = hsl(228, 15, 65),
	mg0 = hsl(228, 15, 50),
	mg1 = hsl(228, 15, 40),
	mg2 = hsl(228, 15, 30),
	mg3 = hsl(228, 15, 20),
	red = hsl(350, 85, 68),
	orange = hsl(9, 70, 73),
	peach = hsl(25, 70, 79),
	yellow = hsl(39, 80, 76),
	green = hsl(98, 50, 65),
	blue = hsl(185, 45, 55),
	purple = hsl(279, 55, 65),
	reddim = hsl(350, 50, 68),
	orangedim = hsl(9, 60, 73),
	peachdim = hsl(25, 60, 79),
	yellowdim = hsl(39, 50, 76),
	greendim = hsl(98, 30, 65),
	bluedim = hsl(185, 50, 44),
	purpledim = hsl(279, 30, 66),
	diffadd = hsl(98, 30, 17),
	diffchange = hsl(38, 30, 17),
	difftext = hsl(38, 30, 25),
	diffdelete = hsl(350, 30, 17),
	markline = hsl(279, 30, 20),
	none = "NONE",
}

-- @class Beam Color Palette
M.beam = {
	bg0 = hsl(228, 15, 20),
	bg1 = hsl(228, 15, 18),
	bg2 = hsl(228, 15, 16),
	bg3 = hsl(228, 15, 13),
	bg4 = hsl(228, 15, 11),
	fg0 = hsl(228, 15, 85),
	fg1 = hsl(228, 15, 75),
	fg2 = hsl(228, 15, 65),
	mg0 = hsl(228, 15, 60),
	mg1 = hsl(228, 15, 50),
	mg2 = hsl(228, 15, 40),
	mg3 = hsl(228, 15, 30),
	red = hsl(350, 85, 68),
	orange = hsl(9, 70, 73),
	peach = hsl(25, 70, 79),
	yellow = hsl(39, 80, 76),
	green = hsl(98, 50, 65),
	blue = hsl(185, 45, 55),
	purple = hsl(279, 55, 65),
	reddim = hsl(350, 50, 68),
	orangedim = hsl(9, 60, 73),
	peachdim = hsl(25, 60, 79),
	yellowdim = hsl(39, 50, 76),
	greendim = hsl(98, 30, 65),
	bluedim = hsl(185, 50, 44),
	purpledim = hsl(279, 30, 66),
	diffadd = hsl(98, 30, 17),
	diffchange = hsl(38, 30, 17),
	difftext = hsl(38, 30, 25),
	diffdelete = hsl(350, 30, 17),
	markline = hsl(279, 30, 20),
	none = "NONE",
}

-- @class Ray Color Palette
M.ray = {
	bg0 = hsl(228, 15, 90),
	bg1 = hsl(228, 15, 85),
	bg2 = hsl(228, 15, 80),
	bg3 = hsl(228, 15, 75),
	bg4 = hsl(228, 15, 70),
	fg0 = hsl(228, 15, 30),
	fg1 = hsl(228, 15, 34),
	fg2 = hsl(228, 15, 38),
	mg0 = hsl(228, 15, 60),
	mg1 = hsl(228, 15, 65),
	mg2 = hsl(228, 15, 70),
	mg3 = hsl(228, 15, 75),
	red = hsl(350, 75, 45),
	orange = hsl(25, 95, 35),
	peach = hsl(25, 75, 35),
	yellow = hsl(39, 75, 35),
	green = hsl(98, 45, 40),
	blue = hsl(185, 45, 40),
	purple = hsl(279, 65, 55),
	reddim = hsl(350, 65, 55),
	orangedim = hsl(9, 65, 55),
	peachdim = hsl(25, 65, 55),
	yellowdim = hsl(39, 65, 55),
	greendim = hsl(98, 45, 50),
	bluedim = hsl(185, 35, 50),
	purpledim = hsl(279, 65, 65),
	diffadd = hsl(98, 30, 87),
	diffchange = hsl(38, 30, 82),
	difftext = hsl(38, 30, 85),
	diffdelete = hsl(350, 30, 82),
	markline = hsl(279, 30, 80),
	none = "NONE",
}

function M.setup(opts)
	opts = opts or {}
	local config = require("horizon-extended.config")

	local palette = M.neo
	if config.options.style == "neo" or config.options.style == "Neo" then
		palette = M.neo
	elseif config.options.style == "beam" or config.options.style == "Beam" then
		palette = M.beam
	elseif config.options.style == "ray" or config.options.style == "Ray" then
		palette = M.ray
	end

	if type(palette) == "function" then
		palette = palette()
	end

	return palette
end

return M
