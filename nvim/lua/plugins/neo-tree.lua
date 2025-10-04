return {
	"nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    lazy = false, -- neo-tree will lazily load itself
    ---@module "neo-tree"
    ---@type neotree.Config?
    opts = {
          -- add options here
	},

	config = function()
		vim.keymap.set("n","<leader>n", ':Neotree filesystem reveal right<CR>', {})
	end
}