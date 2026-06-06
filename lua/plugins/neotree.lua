return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- Essencial para ter ícones bonitos
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{ "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" },
		{ "<leader>o", "<cmd>Neotree focus<cr>", desc = "Focus Explorer" },
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = true, -- Fecha o Neovim se só sobrar o Neo-tree aberto
			window = {
				position = "left",
				width = 30,
			},
			filesystem = {
				filtered_items = {
					visible = false,
					hide_dotfiles = false,
					hide_gitignored = true,
				},
				hijack_netrw_behavior = "open_default",
			},
		})
	end,
}
