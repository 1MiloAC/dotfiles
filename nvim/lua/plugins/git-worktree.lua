return {
    'ThePrimeagen/git-worktree.nvim',
    config = function()
        local telescope = require('telescope')
        telescope.load_extension('git_worktree')

        -- Set keybind for opening Git worktrees
        vim.keymap.set('n', '<leader>gw', function()
            telescope.extensions.git_worktree.git_worktrees()
        end, { desc = 'Open Telescope Git Worktrees' })
    end,
}
