return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",

	config = function()
		config = require("nvim-treesitter.configs")
		config.setup({
			auto_install = true,
			ensure_installed = { "lua", "python", "c", "cpp", "rust" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
