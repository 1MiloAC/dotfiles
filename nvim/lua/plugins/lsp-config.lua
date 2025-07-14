return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({})
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                automatic_installation = true,
                handlers = {
                    ["lua_ls"] = function()
                        require("lspconfig").lua_ls.setup({
                            settings = {
                                Lua = {
                                    diagnostics = {
                                        globals = { "vim" },
                                    },
                                },
                            },
                        })
                    end,
                    function(server_name)
                        require("lspconfig")[server_name].setup({})
                    end,
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            {
                "SmiteshP/nvim-navbuddy",
                dependencies = {
                    "SmiteshP/nvim-navic",
                    "MunifTanjim/nui.nvim",
                },
                opts = { lsp = { auto_attach = true } },
            },
        },
        config = function()
            local navbuddy = require("nvim-navbuddy")
            --            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            --           vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            --          vim.keymap.set({'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})

             require("lspconfig").wgsl_analyzer.setup({
                 cmd = { "wgsl_analyzer" },
             })

            vim.keymap.set("n", "<leader>b", function()
                navbuddy.open()
            end)
        end,
    },
}
