return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup {
            disable_netrw = true,
        }
        local api = require("nvim-tree.api")
        vim.keymap.set("n", "<leader>to", api.tree.focus)
        vim.keymap.set("n", "<leader>tt", api.tree.toggle)
    end
}
