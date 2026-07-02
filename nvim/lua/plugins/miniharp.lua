return {
	"vieitesss/miniharp.nvim",
	version = "*", -- latest stable release
	-- branch = 'main', -- latest nightly version
	opts = {
		autoload = true,
		autosave = true,
		show_on_autoload = false,
		notifications = true,
		ui = {
			position = "center", -- `top-left`, `top-right`, `bottom-left`, `bottom-right`.
			show_hints = true,
			enter = true, -- Whether to enter the floating window or not
		},
	},
	config = function()
		local miniharp = require("miniharp")

		vim.keymap.set("n", "<leader>m", miniharp.toggle_file, { desc = "miniharp: toggle file mark" })
		vim.keymap.set("n", "<C-n>", miniharp.next, { desc = "miniharp: next file mark" })
		vim.keymap.set("n", "<C-p>", miniharp.prev, { desc = "miniharp: prev file mark" })
		vim.keymap.set("n", "<leader>l", miniharp.show_list, { desc = "miniharp: toggle marks list" })
		vim.keymap.set("n", "<leader>L", miniharp.enter_list, { desc = "miniharp: enter marks list" })
	end,
}
