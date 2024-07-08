local utils = require("horizon-extended.utils")
local theme = require("horizon-extended.theme")
local config = require("horizon-extended.config")

local M = {}

function M._load()
	utils.load(theme.setup())
end

M.setup = config.setup

-- keep for backward compatibility
M.colorscheme = M.load

return M
