return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = { "catppuccin", "zenbones", "forestbones" },
		})
	end,
}
