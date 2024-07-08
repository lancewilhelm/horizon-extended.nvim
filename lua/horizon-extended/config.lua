local M = {}

local defaults = {
	style = "dark",
	transparent = false,
	terminal_colrs = true,
	enable_italics = true,
	styles = {
		comments = { italic = false },
		keywords = { italic = false },
		functions = { bold = false },
		variables = {},
		string = { italic = false },
		underline = false,
		undercurl = false,
	},
	-- add specific highlight groups
	on_highlights = function(highlights, colors) end,
}

M.options = {}

function M.setup(options)
	M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

function M.extend(options)
	M.options = vim.tbl_deep_extend("force", {}, M.options or defaults, options or {})
end

M.setup()

return M
