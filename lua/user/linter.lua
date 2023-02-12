-- -- linters and formatters <https://www.lunarvim.org/docs/languages#lintingformatting>
local formatters = require "lvim.lsp.null-ls.formatters"

formatters.setup {
	{ command = "stylua" },
	{
		command = "prettier",
		filetypes = { "typescript", "typescriptreact", "html", "tailwindcss", "json" },
	},
}

local linters = require "lvim.lsp.null-ls.linters"

linters.setup {
	{ command = "eslint", filetypes = { "typescript", "typescriptreact" } }
}
