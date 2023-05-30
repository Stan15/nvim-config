-- Helpful guides:
-- https://dev.to/vonheikemen/make-lsp-zeronvim-coexists-with-other-plugins-instead-of-controlling-them-2i80
-- https://medium.com/@shaikzahid0713/code-completion-for-neovim-6127401ebec2
return {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    dependencies = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},              -- Required
        {'williamboman/mason.nvim'},            -- Optional
        {'williamboman/mason-lspconfig.nvim'},  -- Optional

        -- DAP support
        {'mfussenegger/nvim-dap'},

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},           -- Required
        {'hrsh7th/cmp-nvim-lsp'},       -- Required
        {'hrsh7th/cmp-buffer'},         -- Optional
        {'hrsh7th/cmp-path'},           -- Optional
        {'saadparwaiz1/cmp_luasnip'},   -- Optional
        {'hrsh7th/cmp-nvim-lua'},       -- Optional

        -- Snippets
        {'L3MON4D3/LuaSnip'},               -- Required
        {'rafamadriz/friendly-snippets'},   -- Optional
    },
    configure = function()
        local lsp = require('lsp-zero')
        lsp.preset('recommended')

        -- Learn the keybindinbgs, see :help lsp-zero-keybindings
        lsp.on_attach(function(_, bufnr)
            lsp.default_keymaps({buffer = bufnr})
        end)

        vim.diagnostic.config(lsp.defaults.diagnostics())

        lsp.setup()
    end
}
