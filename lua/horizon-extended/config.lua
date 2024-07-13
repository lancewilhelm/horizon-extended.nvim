local M = {}

local defaults = {
	style = "neo",
	transparent = false,
	terminal_colors = true,
	enable_italics = true,
	show_end_of_buffer = false,
	underline = false,
	undercurl = true,
	styles = {
		booleans = { italic = true, bold = false },
		comments = { italic = true, bold = false },
		conditionals = { italic = true, bold = false },
		delimiters = { italic = false, bold = false },
		functions = { italic = false, bold = false },
		keywords = { italic = true, bold = false },
		loops = { italic = true, bold = false },
		operators = { italic = false, bold = false },
		properties = { italic = false, bold = false },
		strings = { italic = false, bold = false },
		types = { italic = false, bold = false },
		variables = { italic = false, bold = false },
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
