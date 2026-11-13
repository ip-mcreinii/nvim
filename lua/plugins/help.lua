return {
    {
        'folke/which-key.nvim',
        event = 'VeryLazy',
        opts = {
            preset = 'helix',
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
