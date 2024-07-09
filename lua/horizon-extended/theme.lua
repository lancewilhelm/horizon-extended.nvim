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
		Comment = { fg = c.mg1, style = options.styles.comments }, -- comments
		Constant = { fg = c.orange }, -- (preferred) any constant
		Cursor = { fg = c.bg0, bg = c.fg1 },
		CursorColumn = { link = "CursorLine" },
		CursorLine = { bg = c.mg3 },
		Delimiter = { fg = c.fg0 }, -- punctuation
		DiffAdd = { bg = c.diffadd },
		DiffChange = { bg = c.diffchange },
		DiffText = { bg = c.difftext },
		DiffDelete = { bg = c.diffdelete },
		ErrorText = { sp = c.pink, undercurl = options.styles.undercurl },
		Folded = { fg = c.blue, bg = c.bg2 },
		Function = { fg = c.blue }, -- (preferred) function names
		Identifier = { fg = c.pink }, -- (preferred) any variable name
		LineNr = { fg = c.mg2 },
		MatchParen = { fg = c.yellow, bg = c.mg0 },
		Normal = { fg = c.fg0, bg = options.transparent and c.none or c.bg0 }, -- Normal text
		NormalFloat = { fg = c.fg0, bg = options.transparent and c.none or c.bg2 }, -- Normal text in a floating window
		NormalNC = { fg = c.fg0, bg = options.transparent and c.none or c.bg0 }, -- Normal text in a non-current window
		CurSearch = { link = "IncSearch" },
		IncSearch = { fg = c.bg0, bg = c.orange },
		PreProc = { fg = c.blue },
		Search = { fg = c.bg0, bg = c.yellow },
		SignColumn = { bg = options.transparent and c.none or c.bg0 },
		SignColumnSB = { bg = c.bg0, fg = c.bg1 },
		Special = { fg = c.peach }, -- special items
		SpellBad = { sp = c.pink, undercurl = options.styles.undercurl },
		SpellCap = { sp = c.blue, undercurl = options.styles.undercurl }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal = { sp = c.purple, undercurl = options.styles.undercurl }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare = { sp = c.green, undercurl = options.styles.undercurl }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		Statement = { fg = c.purple, italic = options.enable_italics }, --
		StatusLine = { fg = c.fg0, bg = options.transparent and c.none or c.bg0 }, -- status line of current window
		StatusLineNC = { fg = c.fg2 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		String = { fg = c.green }, -- Strings
		Tag = { fg = c.pink },
		TabLine = { fg = c.fg2 }, -- tab pages line, not active tab page label
		TabLineFill = { bg = c.bg0 }, -- tab pages line, where there are no labels
		TabLineSel = { fg = c.bg0, bg = c.blue }, -- tab pages line, active tab page label
		Title = { fg = c.blue },
		Type = { fg = c.yellow },
		Question = { fg = c.blue },
		Removed = { fg = c.pink },
		VertSplit = { fg = c.fg1 },
		Visual = { bg = c.mg2 },
		VisualNOS = { bg = c.bg1 }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg = { fg = c.pink },
		WarningText = { sp = c.yellow, undercurl = true },
		Whitespace = { fg = c.mg3 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu = { bg = c.bg1 }, -- current match in 'wildmenu' completion
		WinSeparator = { fg = c.mg2 }, -- the column separating vertically split windows
		lCursor = { fg = c.bg0, bg = c.fg0 }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')

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
		DiagnosticError = { fg = c.pink },
		DiagnosticWarn = { fg = c.yellow },
		DiagnosticInfo = { fg = c.blue },
		DiagnosticHint = { fg = c.green },
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
		TSProperty = { fg = c.pink },
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

		-- Identifiers
		["@variable"] = { fg = c.pink, style = options.styles.variables },
		["@variable.builtin"] = { fg = c.pink },
		["@keyword.operator"] = { fg = c.purple },
		-- ["@text.reference"] = { fg = c.purple },
		-- ["@text.todo.unchecked"] = { fg = c.blue }, -- For brackets and parens.
		-- ["@text.todo.checked"] = { fg = c.green }, -- For brackets and parens.
		-- ["@text.warning"] = { fg = c.bg, bg = c.yellow },
		-- ["@text.danger"] = { fg = c.fg0, bg = c.pink },
		-- ["@text.diff.add"] = { link = "DiffAdd" },
		-- ["@text.diff.delete"] = { link = "DiffDelete" },
		-- ["@namespace"] = { link = "Include" },
		-- -- LSP Semantic Token Groups
		-- ["@lsp.type.comment"] = { link = "TSComment" },
		-- ["@lsp.type.enum"] = { link = "@type" },
		-- ["@lsp.type.enumMember"] = { link = "TSConstructor" },
		-- ["@lsp.type.interface"] = { fg = c.blue },
		-- ["@lsp.type.keyword"] = { link = "TSKeyword" },
		-- ["@lsp.type.modifier"] = { fg = c.pink },
		-- ["@lsp.type.namespace"] = { link = "TSNameSpace" },
		-- ["@lsp.type.parameter"] = { link = "TSParameter" },
		-- ["@lsp.type.property"] = { link = "TSProperty" },
		-- ["@lsp.type.variable"] = { fg = c.fg0 },
		-- ["@lsp.typemod.function.defaultLibrary"] = { link = "TSFuncBuiltin" },
		-- ["@lsp.typemod.macro.defaultLibrary"] = { link = "TSFuncBuiltin" },
		-- ["@lsp.typemod.method.defaultLibrary"] = { link = "TSFuncBuiltin" },
		-- ["@lsp.typemod.operator.injected"] = { link = "TSOperator" },
		-- ["@lsp.typemod.string.injected"] = { link = "@string" },
		-- ["@lsp.typemod.type.defaultLibrary"] = { fg = c.blue },
		-- ["@lsp.typemod.variable.defaultLibrary"] = { link = "TSVariableBuiltin" },
		-- ["@lsp.typemod.variable.injected"] = { link = "TSVariable" },
		-- ts-rainbow
		rainbowcol1 = { fg = c.pink },
		rainbowcol2 = { fg = c.orange },
		rainbowcol3 = { fg = c.peach },
		rainbowcol4 = { fg = c.yellow },
		rainbowcol5 = { fg = c.green },
		rainbowcol6 = { fg = c.blue },
		rainbowcol7 = { fg = c.purple },

		-- PLUGINS
		-- Dashboard
		DashboardHeader = { fg = c.pink },
		DashboardFooter = { fg = c.pink },
		DashboardShortCut = { fg = c.purple },
		DashboardProjectTitle = { fg = c.yellow },
		DashboardProjectIcon = { fg = c.blue },
		DashboardFiles = { fg = c.green },
		DashboardMruTitle = { fg = c.yellow },

		-- Indent Blank Line
		IblIdent = { fg = c.pink },
		IblScope = { fg = c.fg2 },
		RainbowRed = { blend = 0, fg = c.pink },
		RainbowYellow = { blend = 0, fg = c.yellow },
		RainbowBlue = { blend = 0, fg = c.blue },
		RainbowOrange = { blend = 0, fg = c.orange },
		RainbowGreen = { blend = 0, fg = c.green },
		RainbowViolet = { blend = 0, fg = c.purple },
		RainbowCyan = { blend = 0, fg = c.blue },

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

		-- Bufferline
		BufferLineFill = { bg = c.bg4 },
		BufferLineBackground = { bg = c.bg2 },
		BufferLineCloseButton = { fg = c.mg0, bg = c.bg2 },
		BufferLineCloseButtonSelected = { fg = c.fg0, bg = c.bg0 },
		BufferLineBufferVisible = {},
		BufferLineBufferSelected = {},
		BufferLineHint = { fg = c.blue, bg = c.bg2 },
		BufferLineHintSelected = { fg = c.blue, bg = c.bg0 },
		BufferLineInfo = { fg = c.green, bg = c.bg2 },
		BufferLineInfoSelected = { fg = c.green, bg = c.bg0 },
		BufferLineWarning = { fg = c.orange, bg = c.bg2 },
		BufferLineWarningSelected = { fg = c.orange, bg = c.bg0 },
		BufferLineError = { fg = c.pink, bg = c.bg2 },
		BufferLineErrorSelected = { fg = c.pink, bg = c.bg0 },
		BufferLineSeparator = { fg = c.bg4, bg = c.bg2 },
		BufferLineSeparatorSelected = { fg = c.bg4, bg = c.bg0 },
		BufferLineNeoTree = { fg = c.fg0, bg = c.bg2 },

		-- diff
		diffAdded = { fg = c.green },
		diffRemoved = { fg = c.pink },
		diffChanged = { fg = c.yellow },
		diffOldFile = { fg = c.yellow },
		diffNewFile = { fg = c.orange },
		diffFile = { fg = c.blue },
		diffLine = { fg = c.mg0 },
		diffIndexLine = { fg = c.purple },

		-- GitSigns
		GitSignsAdd = { link = "GreenSign" }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { link = "YellowSign" }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { link = "RedSign" }, -- diff mode: Deleted line |diff.txt|
		GitSignsAddNr = { fg = c.green },
		GitSignsChangeNr = { fg = c.yellow },
		GitSignsDeleteNr = { fg = c.pink },
		GitSignsAddLn = { link = "diffAdded" },
		GitSignsDeleteLn = { link = "diffRemoved" },
		GitSignsCurrentLineBlame = { fg = c.mg0 },

		-- Cmp
		CmpDocumentation = { fg = c.fg1, bg = options.transparent and c.none or c.bg1 },
		CmpDocumentationBorder = { fg = c.bg1, bg = options.transparent and c.none or c.bg0 },
		CmpItemKindDefault = { fg = c.fg1, bg = c.none },
		CmpItemAbbrMatch = { fg = c.purple, bold = true },
		CmpItemAbbrMatchFuzzy = { fg = c.purple, bold = true },
		CmpItemAbbr = { fg = c.fg0 },
		CmpItemAbbrDeprecated = { fg = c.mg0 },
		CmpItemMenu = { fg = c.fg0 },
		CmpItemKind = { fg = c.yellow },
		CmpItemKindText = { fg = c.fg0 },
		CmpItemKindMethod = { fg = c.green },
		CmpItemKindFunction = { fg = c.purple },
		CmpItemKindConstructor = { fg = c.green },
		CmpItemKindField = { fg = c.green },
		CmpItemKindVariable = { fg = c.pink },
		CmpItemKindClass = { fg = c.yellow },
		CmpItemKindInterface = { fg = c.yellow },
		CmpItemKindModule = { fg = c.yellow },
		CmpItemKindProperty = { fg = c.pink },
		CmpItemKindUnit = { fg = c.purple },
		CmpItemKindValue = { fg = c.purple },
		CmpItemKindEnum = { fg = c.yellow },
		CmpItemKindKeyword = { fg = c.pink },
		CmpItemKindSnippet = { fg = c.blue },
		CmpItemKindColor = { fg = c.blue },
		CmpItemKindFile = { fg = c.blue },
		CmpItemKindReference = { fg = c.blue },
		CmpItemKindFolder = { fg = c.blue },
		CmpItemKindEnumMember = { fg = c.purple },
		CmpItemKindConstant = { fg = c.blue },
		CmpItemKindStruct = { fg = c.yellow },
		CmpItemKindEvent = { fg = c.orange },
		CmpItemKindOperator = { fg = c.orange },
		CmpItemKindTypeParameter = { fg = c.yellow },
		NavicIconsFile = { fg = c.fg0 },
		NavicIconsModule = { fg = c.yellow },
		NavicIconsNamespace = { fg = c.fg0 },
		NavicIconsPackage = { fg = c.fg0 },
		NavicIconsClass = { fg = c.orange },
		NavicIconsMethod = { fg = c.blue },
		NavicIconsProperty = { fg = c.green },
		NavicIconsField = { fg = c.green },
		NavicIconsConstructor = { fg = c.orange },
		NavicIconsEnum = { fg = c.orange },
		NavicIconsInterface = { fg = c.orange },
		NavicIconsFunction = { fg = c.blue },
		NavicIconsVariable = { fg = c.purple },
		NavicIconsConstant = { fg = c.purple },
		NavicIconsString = { fg = c.green },
		NavicIconsNumber = { fg = c.orange },
		NavicIconsBoolean = { fg = c.orange },
		NavicIconsArray = { fg = c.orange },
		NavicIconsObject = { fg = c.orange },
		NavicIconsKey = { fg = c.purple },
		NavicIconsKeyword = { fg = c.purple },
		NavicIconsNull = { fg = c.orange },
		NavicIconsEnumMember = { fg = c.green },
		NavicIconsStruct = { fg = c.orange },
		NavicIconsEvent = { fg = c.orange },
		NavicIconsOperator = { fg = c.fg0 },
		NavicIconsTypeParameter = { fg = c.green },
		NavicText = { fg = c.fg0 },
		NavicSeparator = { fg = c.fg0 },

		-- LANGUAGES
		-- Python
		pythonBuiltin = { fg = c.yellow },
		pythonExceptions = { fg = c.yellow },
		pythonDecoratorName = { fg = c.blue },
		["@function.builtin.python"] = { link = "Function" },

		-- Rust
		rustStructure = { fg = c.orange },
		rustIdentifier = { fg = c.purple },
		rustModPath = { fg = c.orange },
		rustModPathSep = { fg = c.fg0 },
		rustSelf = { fg = c.blue },
		rustSuper = { fg = c.blue },
		rustDeriveTrait = { fg = c.purple, italic = options.enable_italics },
		rustEnumVariant = { fg = c.purple },
		rustMacroVariable = { fg = c.blue },
		rustAssert = { fg = c.blue },
		rustPanic = { fg = c.blue },
		rustPubScopeCrate = { fg = c.purple, italic = options.enable_italics },
	}

	theme.defer = {}

	options.on_highlights(theme.highlights, theme.colors)

	return theme
end

return M
