return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	config = function()
		require("nvim-treesitter.config").setup({
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ac"] = "@class.outer",
						["ic"] = "@class.inner",
					},
				},
				move = {
					enable = true,
					goto_next_start = { ["]f"] = "@function.outer" },
					goto_prev_start = { ["[f"] = "@function.outer" },
				},
			},
			ensure_installed = {
				"c",
				"cpp",
				"python",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"html",
				"css",
				"javascript",
				"bash",
			},
			sync_install = false,
			auto_install = true, -- Instala parsers automaticamente se faltar
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
