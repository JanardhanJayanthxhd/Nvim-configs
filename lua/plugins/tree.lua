return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup {
            renderer = {
                indent_markers = {
                    enable = true,          -- turn on the lines
                    inline_arrows = false,  -- keep arrows at start of line
                    icons = {
                        corner = "└",
                        edge = "│",
                        item = "│",
                        bottom = "─",
                        none = " ",
                    },
                },
            },
        }

        -- Keymaps
        vim.keymap.set("n", "<leader>t", function() vim.cmd("NvimTreeToggle") end)
        vim.keymap.set("n", "<leader>to", function() vim.cmd("NvimTreeOpen") end)
        vim.keymap.set("n", "<leader>tc", function() vim.cmd("NvimTreeClose") end)
        vim.keymap.set("n", "<leader>tf", function() vim.cmd("NvimTreeFocus") end)
        vim.keymap.set("n", "<leader>tF", function() vim.cmd("NvimTreeFindFile") end)
    end,
}
