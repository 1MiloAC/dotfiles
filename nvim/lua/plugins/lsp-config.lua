return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{
				"mason-org/mason.nvim",
				opts = {},
				dependencies = {
					"mfussnegger/nvim-dap",
				},
			},
			"neovim/nvim-lspconfig",
		},
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
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local navbuddy = require("nvim-navbuddy")
			vim.keymap.set("n", "<leader>b", function()
				navbuddy.open()
			end)
			vim.lsp.config("svelte", {
				capabilities = capabilities,
			})
			vim.lsp.enable("svelte")
			vim.lsp.config("tailwindcss", {
				capabilities = capabilities,
			})
			vim.lsp.config("stylua", {
				capabilities = capabilities,
			})
			vim.lsp.enable("stylua")
			vim.lsp.config("rustanalyzer", {
				capabilities = capabilities,
			})
			vim.lsp.enable("rustanalyzer")
			vim.lsp.config("wgsl_analyzer", {
				capabilities = capabilities,
			})
			vim.lsp.enable("wgsl_analyzer")
		end,
	},
}
