local utils = require("conceal.templates.utils")

local keywords = {}
for _, keyword in ipairs({
	"import",
	"struct",
	"nil",
	"interface",
	"if",
	"else",
	"var",
	"const",
	"break",
	"continue",
	"return",
	"range",
	"for",
	"int",
	"delete",
	"append",
	":=",
	"func",
	"mu",
	"ctx",
	"context.Context",
	"panic",
	"fmt",
	"Sprintf",
	"Printf",
	"Println",
}) do
	keywords[keyword] = utils.query_builder(keyword)
end

return keywords
