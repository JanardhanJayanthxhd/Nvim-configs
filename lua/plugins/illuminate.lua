return {
	"RRethy/vim-illuminate",
	event = "VeryLazy",
	config = function()
		require("illuminate").configure({
			providers = {
				"lsp",
				"treesitter",
				"regex",
			},
			delay = 100,
			filetypes_denylist = {
				"dirvish",
				"fugitive",
				"NvimTree",
				"TelescopePrompt",
			},
			under_cursor = true,
		})

		local backgroundColor = "#3e4451"

		-- Customize highlight style
		vim.api.nvim_set_hl(0, "IlluminatedWordText", { bg = backgroundColor })
		vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bg = backgroundColor })
		vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { bg = backgroundColor })
	end,
}
