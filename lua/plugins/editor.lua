return {
    -- Pairings
    { 'nvim-mini/mini.surround', version = false, opts = {} },
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        opts = {},
    },

    -- Diagnostics
    {
        'folke/trouble.nvim',
        opts = {}, -- for default options, refer to the configuration section for custom setup.
        cmd = 'Trouble',
        keys = {
            {
                '<leader>xx',
                '<cmd>Trouble diagnostics toggle<cr>',
                desc = 'Diagnostics (Trouble)',
            },
            {
                '<leader>xX',
                '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
                desc = 'Buffer Diagnostics (Trouble)',
            },
            {
                '<leader>cs',
                '<cmd>Trouble symbols toggle focus=false<cr>',
                desc = 'Symbols (Trouble)',
            },
            {
                '<leader>cl',
                '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
                desc = 'LSP Definitions / references / ... (Trouble)',
            },
            {
                '<leader>xL',
                '<cmd>Trouble loclist toggle<cr>',
                desc = 'Location List (Trouble)',
            },
            {
                '<leader>xQ',
                '<cmd>Trouble qflist toggle<cr>',
                desc = 'Quickfix List (Trouble)',
            },
        },
    },

    -- Colorscheme
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        priority = 1000,

        opts = {
            variant = 'auto',
            dark_variant = 'moon',

            styles = {
                bold = false,
                italic = false,
                transparency = false,
            },
        },

        config = function(_, opts)
            require('rose-pine').setup(opts)
            vim.cmd.colorscheme('rose-pine-moon')
        end,
    },
}
