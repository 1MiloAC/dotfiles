return {
    'stevearc/oil.nvim',

    vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" }),
    config = function()
        require("oil").setup({
            win_options = {
                signcolumn = "auto:2",
            },
            float = {
                -- Padding around the floating window
                padding = 2,
                -- max_width and max_height can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
                max_width = 0.8,
                max_height = 0.4,
                border = "rounded",
                win_options = {
                    winblend = 0,
                },
                -- optionally override the oil buffers window title with custom function: fun(winid: integer): string
                get_win_title = nil,
                -- preview_split: Split direction: "auto", "left", "right", "above", "below".
                preview_split = "right",
                -- This is the config that will be passed to nvim_open_win.
                -- Change values here to customize the layout
                override = function(conf)
                    return conf
                end,
            },
        })
    end


}
