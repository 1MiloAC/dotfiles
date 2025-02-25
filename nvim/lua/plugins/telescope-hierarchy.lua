 return {
   "jmacadie/telescope-hierarchy.nvim",
   dependencies = {
     {
       "nvim-telescope/telescope.nvim",
       dependencies = { "nvim-lua/plenary.nvim" },
     },
   },
   keys = {
     { -- lazy style key map
       -- Choose your own keys, this works for me
       "<leader>si",
       "<cmd>Telescope hierarchy incoming_calls<cr>",
       desc = "LSP: [S]earch [I]ncoming Calls",
     },
     {
       "<leader>so",
       "<cmd>Telescope hierarchy outgoing_calls<cr>",
       desc = "LSP: [S]earch [O]utgoing Calls",
     },
   },
   opts = {
     -- don't use `defaults = { }` here, do this in the main telescope spec
     extensions = {
       hierarchy = {
         -- telescope-hierarchy.nvim config
         -- these are the defaults and no need to reset them if you like these
         initial_multi_expand = false, -- Run a multi-expand on open? If false, will only expand one layer deep by default
         multi_depth = 5, -- How many layers deep should a multi-expand go?
         mappings = {
           i = {}, -- this plugin does not work in insert mode, as that would imply filtering the tree
           n = {
             ["e"] = "expand",
             --["e"] = false, -- to reset the 'e' key, if you don't want it mapped
             ["E"] = "multi_expand",
             ["l"] = "expand",
             ["<RIGHT>"] = "expand",
 
             ["c"] = "collapse",
             ["h"] = "collapse",
             ["<LEFT>"] = "collapse",
 
             ["t"] = "toggle",
             ["s"] = "switch",
             ["d"] = "goto_definition",
 
             ["q"] = "quit",
           },
         },
         layout_strategy = "horizontal",
       },
       -- no other extensions here, they can have their own spec too
     },
   },
   config = function(_, opts)
     -- Calling telescope's setup from multiple specs does not hurt, it will happily merge the
     -- configs for us. We won't use data, as everything is in it's own namespace (telescope
     -- defaults, as well as each extension).
     require("telescope").setup(opts)
     require("telescope").load_extension("hierarchy")
   end,
 }
