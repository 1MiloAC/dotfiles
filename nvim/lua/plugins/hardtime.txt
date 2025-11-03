return {
   "m4xshen/hardtime.nvim",
   lazy = false,
   dependencies = { "MunifTanjim/nui.nvim", "tris203/precognition.nvim" },
   opts = {
        callback = function ()
            require("precognition").peek()
            
        end,
    },
}
