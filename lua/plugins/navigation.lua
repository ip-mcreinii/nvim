return {
    -- Telescope (Fuzzy finder.)
    {
        'nvim-telescope/telescope.nvim',
        version = '*',
        cmd = 'Telescope',

        dependencies = {
            'nvim-lua/plenary.nvim',
        },

        keys = {
            { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find files' },
            { '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Live grep' },
            { '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'Find buffers' },
            { '<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'Help tags' },
            { '<leader>fr', '<cmd>Telescope oldfiles<cr>', desc = 'Recent files' },
        },

        opts = {
            defaults = {
                sorting_strategy = 'ascending',
                layout_strategy = 'horizontal',

                layout_config = {
                    horizontal = {
                        prompt_position = 'top',
                        preview_width = 0.55,
                    },

                    width = 0.87,
                    height = 0.80,
                },

                file_ignore_patterns = {
                    'node_modules/',
                    '.git/',
                },
            },
        },
    },

    -- File explorer.
    {
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v3.x',
        cmd = 'Neotree',

        dependencies = {
            'nvim-lua/plenary.nvim',
            'MunifTanjim/nui.nvim',
            'nvim-tree/nvim-web-devicons',
        },

        keys = {
            {
                '<leader>e',
                '<cmd>Neotree toggle<cr>',
                desc = 'Toggle file explorer',
            },
        },

        opts = {
            close_if_last_window = false,
            enable_git_status = true,
            enable_diagnostics = false,

            window = {
                position = 'left',
                width = 30,
            },

            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = true,
                },
            },
        },
    },

    -- Flash
    {
        'folke/flash.nvim',
        event = 'VeryLazy',

        opts = {},

        keys = {
            {
                's',
                mode = { 'n', 'x', 'o' },
                function()
                    require('flash').jump()
                end,
                desc = 'Flash jump',
            },

            {
                'S',
                mode = { 'n', 'x', 'o' },
                function()
                    require('flash').treesitter()
                end,
                desc = 'Flash Treesitter',
            },
        },
    },
}
