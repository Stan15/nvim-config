return {
    "ThePrimeagen/harpoon",
    lazy = false,
    dependencies = {
        {"nvim-lua/plenary.nvim"}
    },
    config = function()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        vim.keymap.set("n", "<leader>a", mark.add_file)
        vim.keymap.set("n", "<leader>fh", ui.toggle_quick_menu)
    end
}
