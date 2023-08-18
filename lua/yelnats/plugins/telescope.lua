-- file search for nvim
return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        'nvim-lua/plenary.nvim',
        'ThePrimeagen/harpoon',
    },
    config = function()
        require('telescope').load_extension('harpoon')

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        -- You need to install ripgrep for live_grep to work
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>fp', builtin.resume, {})

        -- local actions = require('telescope.actions')
        -- vim.keymap.set('n', '<leader>x', actions.delete_buffer, {})
    end
}
