return {
    { "neovim/nvim-lspconfig" },
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup()

            -- Automatic Server Setup 
            require("mason-lspconfig").setup_handlers({
                function(server)
                    require("lspconfig")[server].setup {}
                end
            })
        end
    }
}
