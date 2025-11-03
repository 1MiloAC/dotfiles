return {
	"notjedi/nvim-rooter.lua",
	lazy = false,
	config = function()
		require("nvim-rooter").setup({
			rooter_patterns = { "*" },
			trigger_patterns = { "*" },
			fallback_to_parent = true,
			cd_scope = "global",
		})
	end,
}
