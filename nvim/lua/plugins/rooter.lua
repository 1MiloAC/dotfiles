return {
    "wsdjeg/rooter.nvim",
    config = function()
        require("rooter").setup({
            root_patterns = { ".git/" },
            outermost = true,
            enable_cache = true,
            project_non_root = "", -- this can be '', 'home' or 'current'
            enable_logger = true, -- enable runtime log via logger.nvim
        })
    end,
}
