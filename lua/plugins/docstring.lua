return {
	"danymat/neogen",
	dependencies = "nvim-treesitter/nvim-treesitter",
	config = function()
		require("neogen").setup({
			enabled = true,
			snippet_engine = "luasnip", -- or "nvim" for native snippets, "vsnip", etc.
			languages = {
				python = {
					template = {
						annotation_convention = "google_docstrings", -- Google style for Python
					},
				},
			},
		})

		-- Keymaps
		local opts = { noremap = true, silent = true }
		vim.keymap.set("n", "<leader>nf", function()
			require("neogen").generate({ type = "func" })
		end, vim.tbl_extend("force", opts, { desc = "Generate function docstring" }))

		vim.keymap.set("n", "<leader>nc", function()
			require("neogen").generate({ type = "class" })
		end, vim.tbl_extend("force", opts, { desc = "Generate class docstring" }))

		vim.keymap.set("n", "<leader>nt", function()
			require("neogen").generate({ type = "type" })
		end, vim.tbl_extend("force", opts, { desc = "Generate type docstring" }))

		vim.keymap.set("n", "<leader>nd", function()
			require("neogen").generate()
		end, vim.tbl_extend("force", opts, { desc = "Generate docstring (auto-detect)" }))
	end,
}
