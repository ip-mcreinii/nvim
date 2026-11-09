return {
    'mason-org/mason-lspconfig.nvim',
    opts = {
        ensure_installed = { 'lua_ls' },
    },
    dependencies = {
        { 'mason-org/mason.nvim', opts = {} },
        'neovim/nvim-lspconfig',
    },
    config = function(_, opts)
        require('mason-lspconfig').setup(opts)

        local map = vim.keymap.set

        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function(args)
                local options = {
                    buffer = args.buf,
                    silent = true,
                }

                -- Navigation
                map('n', 'gd', vim.lsp.buf.definition, options)
                map('n', 'gD', vim.lsp.buf.declaration, options)
                map('n', 'gr', vim.lsp.buf.references, options)
                map('n', 'gi', vim.lsp.buf.implementation, options)

                -- Documentation
                map('n', 'K', vim.lsp.buf.hover, options)

                -- Actions
                map('n', '<leader>la', vim.lsp.buf.code_action, options)
                map('n', '<leader>lr', vim.lsp.buf.rename, options)
                map('n', '<leader>lf', function()
                    vim.lsp.buf.format({ async = true })
                end, options)

                -- Diagnostics
                map('n', '[d', vim.diagnostic.goto_prev, options)
                map('n', ']d', vim.diagnostic.goto_next, options)
                map('n', '<leader>d', vim.diagnostic.open_float, options)
            end,
        })
    end,
}
