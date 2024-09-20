local language_defaults = require("conceal.language_defaults")

return {
	--[[ ["language"] = {
        enabled = bool,
        ["keyword"] = {
            enabled     = bool,
            conceal     = string,
            highlight   = string
        }
    } ]]

	["lua"] = {
		enabled = true,
		keywords = {
			["require"] = {
				enabled = true,
				conceal = "req",
				highlight = "function.builtin",
			},
			["local"] = {
				enabled = true,
				conceal = "loc",
				highlight = "keyword",
			},
			["function"] = {
				enabled = true,
				conceal = "fn",
				highlight = "keyword.function",
			},
			["if"] = {
				enabled = false,
				conceal = "?",
				highlight = "conditional",
			},
			["else"] = {
				enabled = true,
				conceal = "el",
				highlight = "conditional",
			},
			["elseif"] = {
				enabled = true,
				conceal = "elif",
				highlight = "conditional",
			},
			["for"] = {
				enabled = true,
				conceal = "∞",
				highlight = "repeat",
			},
			["return"] = {
				enabled = true,
				conceal = "⊰",
				highlight = "keyword.function",
			},
			["and"] = {
				enabled = true,
				conceal = "&&&",
				highlight = "keyword.function",
			},
			["end"] = {
				enabled = true,
				conceal = "〙",
				highlight = "keyword.function",
			},
			["then"] = {
				enabled = true,
				conceal = "》",
				highlight = "conditional",
			},
			["do"] = {
				enabled = false,
				conceal = "d",
				highlight = "repeat",
			},
			["in"] = {
				enabled = false,
				conceal = "i",
				highlight = "keyword",
			},
		},
	},

	["c"] = {
		enabled = true,
		keywords = {
			["char_datatype"] = {
				enabled = true,
				conceal = "c",
				highlight = "type",
			},
			["const"] = {
				enabled = true,
				conceal = "C",
				highlight = "keyword",
			},
		},
	},

	["python"] = {
		enabled = true,
		keywords = language_defaults.python,
	},

	["go"] = {
		enabled = true,
		keywords = language_defaults.go,
	},
}
