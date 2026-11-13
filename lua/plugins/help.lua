return {
    {
        'folke/which-key.nvim',
        event = 'VeryLazy',

        opts = {
            delay = 500,
            spec = {
                { '<leader>f', group = 'find' },
                { '<leader>g', group = 'git' },
                { '<leader>h', group = 'hunks' },
                { '<leader>s', group = 'splits' },
            },
        },
    },
}
