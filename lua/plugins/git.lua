return {
    {
        'lewis6991/gitsigns.nvim',
        event = {
            'BufReadPre',
            'BufNewFile',
        },

        opts = {
            signs = {
                add = { text = '+' },
                change = { text = '~' },
                delete = { text = '_' },
            },

            current_line_blame = false,

            on_attach = function(bufnr)
                local gs = require('gitsigns')

                local function map(lhs, rhs, desc)
                    vim.keymap.set('n', lhs, rhs, {
                        buffer = bufnr,
                        desc = desc,
                        silent = true,
                    })
                end

                map(']c', gs.next_hunk, 'Next git hunk')
                map('[c', gs.prev_hunk, 'Previous git hunk')

                map('<leader>hp', gs.preview_hunk, 'Preview hunk')
                map('<leader>hr', gs.reset_hunk, 'Reset hunk')
                map('<leader>hs', gs.stage_hunk, 'Stage hunk')
                map('<leader>hb', gs.blame_line, 'Blame line')
            end,
        },
    },
}
