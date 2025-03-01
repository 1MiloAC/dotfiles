return {
	"lukeb06/history.nvim",
	dependencies = { "MunifTanjim/nui.nvim" },
	config = true,
	opts = {
		forward_key = "<Tab>", -- (default) key to open the UI. once opened, pressing this key will cycle forward through the buffer history.
		backward_key = "<S-Tab>", -- (default) this key does not open the UI, but will cycle backwards through the buffer history UI when open.
		width = "40%", -- (default) width of the UI, can be a percentage or a number.
        height = "60%", -- (default) height of the UI, can be a percentage or a number.
        persist = true, -- (default) whether to persist the UI across sessions. (this is per directory)
	},
}
