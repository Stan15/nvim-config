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
        vim.keymap.set("n", "<leader>ff", api.tree.focus)
        vim.keymap.set("n", "<leader>ft", api.tree.toggle)
    end
}
