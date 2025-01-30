return {
    'goolord/alpha-nvim',
    dependencies = {
        'echasnovski/mini.icons',
        'nvim-lua/plenary.nvim'
    },
    config = function ()
        require'alpha'.setup(require'config.alpha-nvim'.config)
    end
};
