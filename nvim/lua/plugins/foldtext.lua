return {
    "OXY2DEV/foldtext.nvim",
    lazy = false,
    config = function()
        require("foldtext").setup({
            -- Ignore buffers with these buftypes.
            ignore_buftypes = {},
            -- Ignore buffers with these filetypes.
            ignore_filetypes = {},
            -- Ignore buffers/windows if the result
            -- is false.
            condition = function()
                return true;
            end,

            styles = {
                default = {
                    {
                        kind = "bufline",
                        -- Optional condition for this
                        -- part.
                        condition = function()
                            return true;
                        end,

                        -- Delimiter between the start/end line.
                        delimiter = "...",
                        -- Highlight group for `delimiter`.
                        hl = "@comment"
                    }
                },
            },
        })
    end,
}
