local utils = require("conceal.templates.utils")

local keywords = {}
for _, keyword in ipairs({
	"import",
	"func",
	"struct",
	"const",
	"var",
	"if",
	"else",
	"break",
	"continue",
	"return",
	"for",
	"interface",
	"range",
	"nil",
	"delete",
	"append",
	":=",
}) do
	keywords[keyword] = utils.query_builder(keyword)
end

-- `from` has two valid meanings: part of from import or part of yield from
keywords["from_import"] = function(options)
	return string.format(
		'((import_from_statement ("from") @%s) (#set! conceal "%s"))',
		options.highlight,
		options.conceal
	)
end
keywords["from_yield"] = function(options)
	return string.format('((yield ("from") @%s) (#set! conceal "%s"))', options.highlight, options.conceal)
end

-- some syntax sugar for common builtins
keywords["print"] = function(options)
	return string.format(
		'((call function: (identifier) @%s (#eq? @%s "print")) (#set! conceal "%s"))',
		options.highlight,
		options.highlight,
		options.conceal
	)
end

return keywords
