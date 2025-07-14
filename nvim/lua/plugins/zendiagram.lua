return {
	"caliguIa/zendiagram.nvim",
	opts = {},
	config = function()
		require("zendiagram").setup({
            relative = "win",
            anchor = "NE",
        })
			vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
				callback = function()
                    require("zendiagram").open({focus = false})
				end,
        })
	end,
}
