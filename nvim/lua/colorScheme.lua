local M = {}

local styls = {
	comments = { "italic" },
	conditionals = { "italic" },
	loops = {},
	functions = {},
	keywords = {},
	strings = {},
	variables = {},
	numbers = {},
	booleans = {},
	properties = {},
	types = {},
	operators = {},
	errors = { "italic" },
	hints = { "italic" },
	warnings = { "italic" },
    information = { "italic" },
	ok = { "italic" }
}

local tt = { --theme theft
	rosewater = "#dc8a78",
	flamingo = "#dd7878",
	pink = "#ea76cb",
	mauve = "#8839ef",
	red = "#d20f39",
	maroon = "#e64553",
	peach = "#fe640b",
	yellow = "#df8e1d",
	green = "#40a02b",
	teal = "#179299",
	sky = "#04a5e5",
	sapphire = "#209fb5",
	blue = "#1e66f5",
	lavender = "#7287fd",
	text = "#4c4f69",
	subtext1 = "#5c5f77",
	subtext0 = "#6c6f85",
	overlay2 = "#7c7f93",
	overlay1 = "#8c8fa1",
	overlay0 = "#9ca0b0",
	surface2 = "#acb0be",
	surface1 = "#bcc0cc",
	surface0 = "#ccd0da",
	base = "#eff1f5",
	mantle = "#e6e9ef",
	crust = "#dce0e8",
} 

local colours = {
    -- Generated from 032820
    dg1 = "#032820", --darkGreenOne  
    dg2 = "#054033", --darkGreenTwo  
    dg3 = "#075746", --darkGreenThree
                                
    -- Generated from #80a416   
    lg1 = "#80a416", --lightGreenOne  
    lg2 = "#92ba19", --lightGreenTwo  
    lg3 = "#a3d11c", --lightGreenThree
                                
    -- Generated from #C5C764   
    ly1 = "#c5c764", --lightYellowOne  
    ly2 = "#ccce77", --lightYellowTwo  
    ly3 = "#d3d589", --lightYellowThree
                               
    -- Generated from #08652C   
    mg1  = "#08652c", --midGreenOne  
    mg2  = "#0a7d36", --midGreenTwo  
    mg3  = "#0c9441", --midGreenThree
                               
    -- Generated from #AD9F3C   
    dy1  = "#ad9f3c", --darkYellowOne  
    dy2  = "#beaf44", --darkYellowTwo  
    dy3  = "#c5b757", --darkYellowThree
                                
    -- Generated from #5E7343   
    g01 = "#5e7343", --greyOne  
    g02 = "#6b834c", --greyTwo  
    g03 = "#789356", --greyThree
}

function LineNumberColors()
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg=colours.ly1, bold=true })
    vim.api.nvim_set_hl(0, 'LineNr', { fg=colours.ly2, bold=true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg=colours.ly3, bold=true })
end

-- sets the window split styling
function WinSplitSyle()
    vim.api.nvim_set_hl(0, 'StatusLine', { fg = colours.ly3, bg = colours.dg1, bold = true})
    vim.api.nvim_set_hl(0, 'VertSplit', { fg = colours.ly3, bg = colours.dg1, bold = true})
end

function CodeHighlighiting()
    vim.api.nvim_set_hl(0, 'Keyword', { fg = tt.mauve })
    vim.api.nvim_set_hl(0, 'Comment',{ fg = tt.overlay2 }) -- just comments
	vim.api.nvim_set_hl(0, 'Constant', { fg = tt.peach }) -- (preferred) any constant
	vim.api.nvim_set_hl(0, 'String', { fg = tt.green}) -- a string constant: "this is a string"
	vim.api.nvim_set_hl(0, 'Character', { fg = tt.teal }) --  a character constant: 'c', '\n'
	vim.api.nvim_set_hl(0, 'Number', { fg = tt.peach}) --   a number constant: 234, 0xff
	vim.api.nvim_set_hl(0, 'Boolean', { fg = tt.peach}) --  a boolean constant: TRUE, false
	vim.api.nvim_set_hl(0, 'Identifier', { fg = tt.flamingo}) -- (preferred) any variable name
	vim.api.nvim_set_hl(0, 'Function', { fg = tt.blue}) -- function name (also: methods for classes)
	vim.api.nvim_set_hl(0, 'Statement', { fg = tt.mauve }) -- (preferred) any statement
	vim.api.nvim_set_hl(0, 'Conditional', { fg = tt.mauve}) --  if, then, else, endif, switch, etc.
	vim.api.nvim_set_hl(0, 'Repeat', { fg = tt.mauve }) --   for, do, while, etc.
	vim.api.nvim_set_hl(0, 'Label', { fg = tt.sapphire }) --    case, default, etc.
	vim.api.nvim_set_hl(0, 'Operator', { fg = tt.sky }) -- "sizeof", "+", "*", etc.
	vim.api.nvim_set_hl(0, 'Keyword', { fg = tt.mauve }) --  any other keyword
	vim.api.nvim_set_hl(0, 'Exception', { fg = tt.mauve })

    vim.api.nvim_set_hl(0, 'PreProc',  { fg = tt.pink }) -- (preferred) generic Preprocessor
	vim.api.nvim_set_hl(0, 'Include',  { fg = tt.mauve}) --  preprocessor #include
	vim.api.nvim_set_hl(0, 'Define',  { link = "PreProc" }) -- preprocessor #define
	vim.api.nvim_set_hl(0, 'Macro',  { fg = tt.mauve }) -- same as Define
	vim.api.nvim_set_hl(0, 'PreCondit',  { link = "PreProc" }) -- preprocessor #if, #else, #endif, etc.

	vim.api.nvim_set_hl(0, 'StorageClass',  { fg = tt.yellow }) -- static, register, volatile, etc.
	vim.api.nvim_set_hl(0, 'Structure',  { fg = tt.yellow }) --  struct, union, enum, etc.
	vim.api.nvim_set_hl(0, 'Special', { fg = tt.pink }) -- (preferred) any special symbol
	vim.api.nvim_set_hl(0, 'Type', { fg = tt.yellow}) -- (preferred) int, long, char, etc.
	vim.api.nvim_set_hl(0, 'Typedef', { link = "Type" }) --  A typedef
	vim.api.nvim_set_hl(0, 'SpecialChar', { link = "Special" }) -- special character in a constant
	vim.api.nvim_set_hl(0, 'Tag', { fg = tt.lavender, bold = true }) -- you can use CTRL-] on this
	vim.api.nvim_set_hl(0, 'Delimiter', { fg = tt.overlay2 }) -- character that needs attention
	vim.api.nvim_set_hl(0, 'Debug', { link = "Special" }) -- debugging statements

	vim.api.nvim_set_hl(0, 'Underlined', { underline = true }) -- (preferred) text that stands out, HTML links
	vim.api.nvim_set_hl(0, 'Bold', { bold = true })
	vim.api.nvim_set_hl(0, 'Italic', { italic = true })
	-- ("Ignore", below, may be invisible...)
	-- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

	vim.api.nvim_set_hl(0, 'Error', { fg = tt.red }) -- (preferred) any erroneous construct
	vim.api.nvim_set_hl(0, 'Todo', { bg = tt.flamingo, fg = tt.base, bold = true }) -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
	vim.api.nvim_set_hl(0, 'qfLineNr', { fg = tt.yellow })
	vim.api.nvim_set_hl(0, 'qfFileName', { fg = tt.blue })
	vim.api.nvim_set_hl(0, 'htmlH1', { fg = tt.pink, bold = true })
	vim.api.nvim_set_hl(0, 'htmlH2', { fg = tt.blue, bold = true })
	-- mkdHeading = { fg = tt.peach, style = { "bold" } })
	-- mkdCode = { bg = tt.terminal_black, fg = tt.text })
	vim.api.nvim_set_hl(0, 'mkdCodeDelimiter', { bg = tt.base, fg = tt.text })
	vim.api.nvim_set_hl(0, 'mkdCodeStart', { fg = tt.flamingo, bold = true })
	vim.api.nvim_set_hl(0, 'mkdCodeEnd', { fg = tt.flamingo, bold = true })
	-- mkdLink = { fg = C.blue, style = { "underline" } },

	-- debugging
	vim.api.nvim_set_hl(0, 'debugPC', { bg = tt.none or tt.crust }) -- used for highlighting the current line in terminal-debug
	vim.api.nvim_set_hl(0, 'debugBreakpoint', { bg = tt.base, fg = tt.overlay0 }) -- used for breakpoint colors in terminal-debug
	-- illuminate
	vim.api.nvim_set_hl(0, 'illuminatedWord', { bg = tt.surface1 })
	vim.api.nvim_set_hl(0, 'illuminatedCurWord', { bg = tt.surface1 })
	-- diff
	vim.api.nvim_set_hl(0, 'Added', { fg = tt.green })
	vim.api.nvim_set_hl(0, 'Changed', { fg = tt.blue })
	vim.api.nvim_set_hl(0, 'diffAdded', { fg = tt.green })
	vim.api.nvim_set_hl(0, 'diffRemoved', { fg = tt.red })
	vim.api.nvim_set_hl(0, 'diffChanged', { fg = tt.blue })
	vim.api.nvim_set_hl(0, 'diffOldFile', { fg = tt.yellow })
	vim.api.nvim_set_hl(0, 'diffNewFile', { fg = tt.peach })
	vim.api.nvim_set_hl(0, 'diffFile', { fg = tt.blue })
	vim.api.nvim_set_hl(0, 'diffLine', { fg = tt.overlay0 })
	vim.api.nvim_set_hl(0, 'diffIndexLine', { fg = tt.teal })
	vim.api.nvim_set_hl(0, 'DiffAdd', { bg = tt.green }) -- diff mode: Added line |diff.txt|
	vim.api.nvim_set_hl(0, 'DiffChange', { bg = tt.blue}) -- diff mode: Changed line |diff.txt|
	vim.api.nvim_set_hl(0, 'DiffDelete', { bg = tt.red}) -- diff mode: Deleted line |diff.txt|
	vim.api.nvim_set_hl(0, 'DiffText', { bg = tt.blue }) -- diff mode: Changed text within a changed line |diff.txt|
	-- NeoVim
	vim.api.nvim_set_hl(0, 'healthError', { fg = tt.red })
	vim.api.nvim_set_hl(0, 'healthSuccess', { fg = tt.teal })
	vim.api.nvim_set_hl(0, 'healthWarning', { fg = tt.yellow })
	-- misc

	-- glyphs
	vim.api.nvim_set_hl(0, 'GlyphPalette1', { fg = tt.red })
	vim.api.nvim_set_hl(0, 'GlyphPalette2', { fg = tt.teal })
	vim.api.nvim_set_hl(0, 'GlyphPalette3', { fg = tt.yellow })
	vim.api.nvim_set_hl(0, 'GlyphPalette4', { fg = tt.blue })
	vim.api.nvim_set_hl(0, 'GlyphPalette6', { fg = tt.teal })
	vim.api.nvim_set_hl(0, 'GlyphPalette7', { fg = tt.text })
	vim.api.nvim_set_hl(0, 'GlyphPalette9', { fg = tt.red })

	-- rainbow
	vim.api.nvim_set_hl(0, 'rainbow1', { fg = tt.red })
	vim.api.nvim_set_hl(0, 'rainbow2', { fg = tt.peach })
	vim.api.nvim_set_hl(0, 'rainbow3', { fg = tt.yellow })
	vim.api.nvim_set_hl(0, 'rainbow4', { fg = tt.green })
	vim.api.nvim_set_hl(0, 'rainbow5', { fg = tt.sapphire })
	vim.api.nvim_set_hl(0, 'rainbow6', { fg = tt.lavender })

	-- csv
	vim.api.nvim_set_hl(0, 'csvCol0', { fg = tt.red })
	vim.api.nvim_set_hl(0, 'csvCol1', { fg = tt.peach })
	vim.api.nvim_set_hl(0, 'csvCol2', { fg = tt.yellow })
	vim.api.nvim_set_hl(0, 'csvCol3', { fg = tt.green })
	vim.api.nvim_set_hl(0, 'csvCol4', { fg = tt.sky })
	vim.api.nvim_set_hl(0, 'csvCol5', { fg = tt.blue })
	vim.api.nvim_set_hl(0, 'csvCol6', { fg = tt.lavender })
	vim.api.nvim_set_hl(0, 'csvCol7', { fg = tt.mauve })
	vim.api.nvim_set_hl(0, 'csvCol8', { fg = tt.pink })

	-- markdown
	vim.api.nvim_set_hl(0, 'markdownHeadingDelimiter', { fg = tt.peach, bold = true })
	vim.api.nvim_set_hl(0, 'markdownCode', { fg = tt.flamingo })
	vim.api.nvim_set_hl(0, 'markdownCodeBlock', { fg = tt.flamingo })
	vim.api.nvim_set_hl(0, 'markdownLinkText', { fg = tt.blue, underline = true })
	vim.api.nvim_set_hl(0, 'markdownH1', { link = "rainbow1" })
	vim.api.nvim_set_hl(0, 'markdownH2', { link = "rainbow2" })
	vim.api.nvim_set_hl(0, 'markdownH3', { link = "rainbow3" })
	vim.api.nvim_set_hl(0, 'markdownH4', { link = "rainbow4" })
	vim.api.nvim_set_hl(0, 'markdownH5', { link = "rainbow5" })
	vim.api.nvim_set_hl(0, 'markdownH6', { link = "rainbow6" })
end

function M.colorschemee()
    vim.cmd('highlight clear')
    vim.cmd('syntax reset')

    LineNumberColors()   
    WinSplitSyle()
    CodeHighlighiting()
end

return M
