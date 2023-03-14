-- -- linters and formatters <https://www.lunarvim.org/docs/languages#lintingformatting>
local formatters = require "lvim.lsp.null-ls.formatters"

formatters.setup {
    { command = "stylua" },
    {
        command = "prettierd",
        filetypes = { "typescript", "typescriptreact", "html", "tailwindcss", "json" },
    },
    { command = "prettier", filetypes = { "tex" } },
}

local linters = require "lvim.lsp.null-ls.linters"

linters.setup {
    {
        command = "eslint_d",
        filetypes = { "javascript", "typescript", "typescriptreact" }
    }
}
