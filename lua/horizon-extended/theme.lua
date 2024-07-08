local colors = require("horizon-extended.colors")

local M = {}
function M.setup()
	local config = require("horizon-extended.config")
	local options = config.options
	local theme = {
		config = options,
		colors = colors.setup(),
	}

	local c = theme.colors

	theme.highlights = {
		Character = { fg = c.green }, -- Single characters like 'c' or '\n'
		Comment = { fg = c.mg1, italic = options.enable_italics }, -- comments
		Constant = { fg = c.orange }, -- (preferred) any constant
		Cursor = { fg = c.bg0, bg = c.fg1 },
		Delimiter = { fg = c.fg0 }, -- punctuation
		Folded = { fg = c.blue, bg = c.bg2 },
		Function = { fg = c.blue }, -- (preferred) function names
		Identifier = { fg = c.pink }, -- (preferred) any variable name
		MatchParen = { fg = c.yellow, bg = c.mg0 },
		Normal = { fg = c.fg0, bg = c.bg0 }, -- Normal text
		NormalFloat = { fg = c.fg0, bg = c.bg2 },
		Special = { fg = c.fg0 }, -- special items
		Statement = { fg = c.purple, italic = options.enable_italics }, --
		String = { fg = c.green }, -- Strings
		Tag = { fg = c.pink },
		Title = { fg = c.blue },
		Type = { fg = c.yellow },
		Question = { fg = c.blue },
		Removed = { fg = c.pink },
		VertSplit = { fg = c.fg1 },
		Visual = { bg = c.mg2 },
		WarningMsg = { fg = c.pink },
		WarningText = { sp = c.yellow, undercurl = true },

		-- Diagnostic
		RedSign = { fg = c.pink },
		YellowSign = { fg = c.yellow },
		GreenSign = { fg = c.green },
		BlueSign = { fg = c.blue },
		VirtualTextWarning = { fg = c.yellow },
		VirtualTextError = { fg = c.pink },
		VirtualTextInfo = { fg = c.blue },
		VirtualTextHint = { fg = c.green },
		ErrorFloat = { fg = c.pink, bg = c.bg1 },
		WarningFloat = { fg = c.yellow, bg = c.bg1 },
		InfoFloat = { fg = c.blue, bg = c.bg1 },
		HintFloat = { fg = c.green, bg = c.bg1 },
		--[[ WinBarNC                   = { fg = c.base1 }, ]]
		DiagnosticFloatingError = { link = "ErrorFloat" },
		DiagnosticFloatingWarn = { link = "WarningFloat" },
		DiagnosticFloatingInfo = { link = "InfoFloat" },
		DiagnosticFloatingHint = { link = "HintFloat" },
		DiagnosticError = { link = "ErrorText" },
		DiagnosticWarn = { link = "WarningText" },
		DiagnosticInfo = { link = "InfoText" },
		DiagnosticHint = { link = "HintText" },
		DiagnosticVirtualTextError = { link = "VirtualTextError" },
		DiagnosticVirtualTextWarn = { link = "VirtualTextWarning" },
		DiagnosticVirtualTextInfo = { link = "VirtualTextInfo" },
		DiagnosticVirtualTextHint = { link = "VirtualTextHint" },
		DiagnosticUnderlineError = { link = "ErrorText" },
		DiagnosticUnderlineWarn = { link = "WarningText" },
		DiagnosticUnderlineInfo = { link = "InfoText" },
		DiagnosticUnderlineHint = { link = "HintText" },
		DiagnosticSignError = { link = "RedSign" },
		DiagnosticSignWarn = { link = "YellowSign" },
		DiagnosticSignHiblue = { link = "BlueSign" },
		DiagnosticSignInfo = { link = "GreenSign" },
		-- These groups are for the native LSP client. Some other LSP clients may
		-- use these groups, or use their own. Consult your LSP client's
		-- documentation.
		LspDiagnosticsFloatingError = { link = "DiagnosticFloatingError" },
		LspDiagnosticsFloatingWarning = { link = "DiagnosticFloatingWarn" },
		LspDiagnosticsFloatingInformation = { link = "DiagnosticFloatingInfo" },
		LspDiagnosticsFloatingHint = { link = "DiagnosticFloatingHint" },
		LspDiagnosticsDefaultError = { link = "DiagnosticError" },
		LspDiagnosticsDefaultWarning = { link = "DiagnosticWarn" },
		LspDiagnosticsDefaultInformation = { link = "DiagnosticInfo" },
		LspDiagnosticsDefaultHint = { link = "DiagnosticHint" },
		LspDiagnosticsVirtualTextError = { link = "DiagnosticVirtualTextError" },
		LspDiagnosticsVirtualTextWarning = { link = "DiagnosticVirtualTextWarn" },
		LspDiagnosticsVirtualTextInformation = { link = "DiagnosticVirtualTextInfo" },
		LspDiagnosticsVirtualTextHint = { link = "DiagnosticVirtualTextHint" },
		LspDiagnosticsUnderlineError = { link = "DiagnosticUnderlineError" },
		LspDiagnosticsUnderlineWarning = { link = "DiagnosticUnderlineWarn" },
		LspDiagnosticsUnderlineInformation = { link = "DiagnosticUnderlineInfo" },
		LspDiagnosticsUnderlineHint = { link = "DiagnosticUnderlineHint" },
		LspDiagnosticsSignError = { link = "DiagnosticSignError" },
		LspDiagnosticsSignWarning = { link = "DiagnosticSignWarn" },
		LspDiagnosticsSignInformation = { link = "DiagnosticSignInfo" },
		LspDiagnosticsSignHint = { link = "DiagnosticSignHint" },
		LspReferenceText = { link = "CurrentWord" },
		LspReferenceRead = { link = "CurrentWord" },
		LspReferenceWrite = { link = "CurrentWord" },
		LspCodeLens = { link = "VirtualTextInfo" },
		LspCodeLensSeparator = { link = "VirtualTextHint" },
		LspSignatureActiveParameter = { link = "Search" },
		TermCursor = { link = "Cursor" },
		healthError = { fg = c.pink },
		healthSuccess = { fg = c.green },
		healthWarning = { fg = c.yellow },
		ALEErrorSign = { link = "ErrorMsg" },
		ALEWarningSign = { link = "WarningMsg" },
		-- These highlight Groups are for Tree-sitter
		TSAnnotation = { fg = c.purple },
		TSAttribute = { fg = c.purple },
		TSBoolean = { fg = c.purple },
		TSCharacter = { fg = c.blue },
		TSComment = { link = "Comment" },
		TSConditional = { link = "Conditional" },
		TSConstBuiltin = { fg = c.blue, italic = true },
		TSConstMacro = { fg = c.blue, italic = true },
		TSConstant = { fg = c.fg0 },
		TSConstructor = { fg = c.green, bold = true },
		TSException = { fg = c.pink },
		TSField = { fg = c.green },
		TSFloat = { fg = c.purple },
		TSFuncBuiltin = { fg = c.green, bold = true },
		TSFuncMacro = { fg = c.green, bold = true },
		TSFunction = { fg = c.green, bold = true },
		TSInclude = { fg = c.pink },
		TSKeyword = { fg = c.pink },
		TSKeywordFunction = { fg = c.pink },
		TSKeywordOperator = { fg = c.orange },
		TSLabel = { fg = c.orange },
		TSMethod = { fg = c.green, bold = true },
		TSNamespace = { fg = c.yellow, italic = true },
		TSNone = { fg = c.fg0 },
		TSNumber = { fg = c.purple },
		TSOperator = { fg = c.orange },
		TSParameter = { fg = c.fg0 },
		TSParameterReference = { fg = c.fg0 },
		TSProperty = { fg = c.blue },
		TSPunctBracket = { fg = c.fg0 },
		TSPunctDelimiter = { fg = c.mg1 },
		TSPunctSpecial = { fg = c.blue },
		TSRepeat = { fg = c.pink },
		TSStorageClass = { fg = c.orange },
		TSString = { fg = c.blue },
		TSStringEscape = { fg = c.green },
		TSStringRegex = { fg = c.green },
		TSSymbol = { fg = c.fg0 },
		TSTag = { fg = c.orange },
		TSTagDelimiter = { fg = c.green },
		TSText = { fg = c.green },
		TSStrike = { fg = c.mg1 },
		TSMath = { fg = c.blue },
		TSType = { fg = c.yellow },
		TSTypeBuiltin = { fg = c.yellow, italic = true },
		TSURI = { link = "markdownUrl" },
		TSVariable = { fg = c.fg0 },
		TSVariableBuiltin = { fg = c.blue, italic = true },
		--
		-- Identifiers
		["@variable"] = { fg = c.pink },

		-- PLUGINS
		-- Dashboard
		DashboardHeader = { fg = c.pink },
		DashboardFooter = { fg = c.pink },
		DashboardShortCut = { fg = c.purple },
		DashboardProjectTitle = { fg = c.green },
		DashboardProjectIcon = { fg = c.blue },
		DashboardFiles = { fg = c.yellow },
		DashboardMruTitle = { fg = c.green },

		-- Indent Blank Line
		IblIdent = { fg = c.bg1 },

		-- Telescope
		TelescopeMatching = { fg = c.pink },
		TelescopeBorder = { fg = c.yellow },
		TelescopePromptPrefix = { fg = c.blue },

		-- Neotree
		NeoTreeDirectoryName = { fg = c.yellow },
		NeoTreeDirectoryIcon = { fg = c.yellow },
		NeoTreeSymbolicLinkTarget = { fg = c.purple },
		NeoTreeGitAdded = { fg = c.green },
		NeoTreeGitConflict = { fg = c.pink },
		NeoTreeGitDeleted = { fg = c.pink },
		NeoTreeGitModified = { fg = c.yellow },
		NeoTreeGitUnstaged = { fg = c.pink },
		NeoTreeGitUntracked = { fg = c.blue },
		NeoTreeGitStaged = { fg = c.green },
		NeoTreeFloatBorder = { fg = c.pink },
		NeoTreeFloatTitle = { fg = c.pink },
		NeoTreeFileNameOpened = { fg = c.blue },

		-- WhichKey
		WhichKey = { fg = c.pink },
		WhichKeyGroup = { fg = c.yellow },
		WhichKeyDesc = { fg = c.fg0 },
		WhichKeySeparator = { fg = c.green },
		WhichKeyFloat = { bg = c.bg2 },

		-- Notify
		NotifyERRORBorder = { fg = c.pink },
		NotifyWARNBorder = { fg = c.orange },
		NotifyINFOBorder = { fg = c.green },
		NotifyDEBUGBorder = { fg = c.blue },
		NotifyTRACEBorder = { fg = c.purple },
		NotifyERRORIcon = { fg = c.pink },
		NotifyWARNIcon = { fg = c.orange },
		NotifyINFOIcon = { fg = c.green },
		NotifyDEBUGIcon = { fg = c.blue },
		NotifyTRACEIcon = { fg = c.purple },
		NotifyERRORTitle = { fg = c.pink },
		NotifyWARNTitle = { fg = c.orange },
		NotifyINFOTitle = { fg = c.green },
		NotifyDEBUGTitle = { fg = c.blue },
		NotifyTRACETitle = { fg = c.purple },

		-- Noice
		NoiceCmdlineIcon = { fg = c.purple },
		NoiceCmdlineIconHelp = { fg = c.green },
		NoiceCmdlineIconLua = { fg = c.blue },
		NoiceCmdlinePopupBorder = { fg = c.yellow },

		-- Undotree
		UndotreeTimeStamp = { fg = c.yellow },
	}

	theme.defer = {}

	options.on_highlights(theme.highlights, theme.colors)

	return theme
end

return M
