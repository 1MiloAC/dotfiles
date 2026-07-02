return {
	"Sang-it/fluoride",
	config = function()
		require("fluoride").setup()
		vim.keymap.set("n", "<leader>fl", "<cmd>Fluoride<cr>", { desc = "Fluoride" })
	end,
}
