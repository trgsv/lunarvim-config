-- -- linters and formatters <https://www.lunarvim.org/docs/languages#lintingformatting>
local formatters = require("lvim.lsp.null-ls.formatters")

formatters.setup({
	{ command = "stylua" },
	{
		command = "prettierd",
		filetypes = { "typescript", "typescriptreact", "html", "tailwindcss", "json" },
	},
	{
		command = "eslint_d",
		filetypes = { "typescript", "typescriptreact", "javascript", "svelte" },
	},
	{ command = "latexindent" },
	{ command = "black", filetypes = { "python" } },
	{ command = "taplo", filetypes = { "toml" } },
	{ command = "beautysh", filetypes = { "bash", "csh", "ksh", "sh", "zsh" } },
})

local linters = require("lvim.lsp.null-ls.linters")

linters.setup({
	{
		command = "eslint_d",
		filetypes = { "javascript", "typescript", "typescriptreact", "svelte" },
	},
	{ command = "flake8", filetypes = { "python" }, extra_args = { "--max-line-length", "88" } },
})
