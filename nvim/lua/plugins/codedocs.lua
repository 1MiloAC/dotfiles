
return {
    "jeangiraldoo/codedocs.nvim",
    config = function()
        vim.keymap.set("n","<leader>k", require('codedocs').insert_docs, { desc = "Inserts a docstring into the buffer" })
    end
}
