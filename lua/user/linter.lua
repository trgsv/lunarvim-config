-- -- linters and formatters <https://www.lunarvim.org/docs/languages#lintingformatting>
local formatters = require("lvim.lsp.null-ls.formatters")

formatters.setup({
    { command = "stylua" },
    {
        command = "latexindent",
        filetypes = { "tex", "latex" },
        extra_args = { "-l", vim.fn.expand("%:p:h") .. "/latexindent.yaml", "-m" },
    },
    { command = "black",    filetypes = { "python" } },
    { command = "taplo",    filetypes = { "toml" } },
    { command = "beautysh", filetypes = { "bash", "csh", "ksh", "sh", "zsh" } },
})

local linters = require("lvim.lsp.null-ls.linters")

linters.setup({
    {
        command = "flake8",
        filetypes = { "python" },
        extra_args = { "--max-line-length", "80", "--select", "B950", "--ignore", "E203,E501,W503" },
    },
})
