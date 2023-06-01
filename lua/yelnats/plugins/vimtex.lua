return {
    'lervag/vimtex',
    lazy = false,
    config = function()
        vim.cmd[[filetype plugin indent on]]
        -- This is the most painful plugin setup process i've ever been through. Why isn't anything working? why are the online guides so trash???
        -- nevermind. T'was my own stupidity...

        -- very useful: https://castel.dev/post/lecture-notes-1/
        vim.g.tex_flavor = 'latex'

        -- Live compilation
        -- maybe helpful?: https://alpha2phi.medium.com/modern-neovim-configuration-recipes-d68b16537698
          vim.g.vimtex_compiler_latexmk = {
            build_dir = ".out",
            options = {
              "-shell-escape",
              "-verbose",
              "-file-line-error",
              "-interaction=nonstopmode",
              "-synctex=1",
            },
          }
          vim.g.vimtex_view_method = "zathura"
          vim.g.vimtex_fold_enabled = true

        -- Disable the quickfix menu that brings up compile errors
        -- vim.g.vimtex_quickfix_mode = 0

        vim.cmd[[set conceallevel=1]]
        vim.g.tex_conceal='abdmg'
    end
}
