-- -- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
lvim.plugins = {
    -- Copilot
    {
        "Exafunction/codeium.vim",
        config = function()
            -- Change '<C-g>' here to any keycode you like.
            vim.keymap.set('i', '<M-m>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
            vim.keymap.set('i', '<M-j>', function() return vim.fn['codeium#CycleCompletions'](1) end,
                { expr = true, silent = true })
            vim.keymap.set('i', '<M-k>', function() return vim.fn['codeium#CycleCompletions'](-1) end,
                { expr = true, silent = true })
            vim.keymap.set('i', '<M-y>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
        end,
    },
    --git diff in a single tabpage
    {
        "sindrets/diffview.nvim",
        event = "BufRead",
    },
    --
    -- highlight and search for todo comments
    {
        "folke/todo-comments.nvim",
        event = "BufRead",
        config = function()
            require("todo-comments").setup()
        end,
    },
    --
    -- mappings to delete, change and add surroundings
    {
        "tpope/vim-surround",

        -- make sure to change the value of `timeoutlen` if it's not triggering correctly, see https://github.com/tpope/vim-surround/issues/117
        -- setup = function()
        --  vim.o.timeoutlen = 500
        -- end
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server",
                "html-lsp",
                -- "prettierd",
                -- "eslint_d",
                "stylua",
                "tailwindcss-language-server",
                "svelte-language-server",
                "prisma-language-server",
                "emmet-ls",
                "json-lsp",
                "pyright",
                "texlab",
                "rust-analyzer",
                "flake8",
                "black",
                "biome"
            },
        },
    },
    { "lervag/vimtex" },
    {
        "andrewferrier/wrapping.nvim",
        config = function()
            require("wrapping").setup()
        end,
    },
}

-- Can not be placed into the config method of the plugins.
lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"
table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })
