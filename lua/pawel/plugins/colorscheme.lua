return {
    -- "bluz71/vim-nightfly-guicolors",
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
        vim.cmd([[colorscheme tokyonight]])
    end,
}
