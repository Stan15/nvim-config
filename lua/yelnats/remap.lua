vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("v", "<leader>p", "\"+p")
vim.keymap.set("n", "<leader>P", "\"+P")


vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- yank current buffer relative_path:line
function yank_buffer_location_from_reg_fn(reg)
    return function()
        vim.fn.setreg(reg, vim.fn.expand("%") .. ":" .. vim.fn.line('.'))
    end
end
vim.keymap.set("n", "yp", yank_buffer_location_from_reg_fn("\""))
vim.keymap.set("n", "<leader>yp", yank_buffer_location_from_reg_fn("+"))


vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

