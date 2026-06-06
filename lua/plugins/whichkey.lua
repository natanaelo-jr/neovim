return {
	"folke/which-key.nvim",
	event = "VimEnter", -- carrega logo após o Neovim iniciar, antes de você apertar qualquer tecla
	opts = {},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
	config = function()
		local wk = require("which-key")
		wk.setup({})
		wk.add({
			{ "<leader>h", group = "harpoon" },
			{ "<leader>f", group = "format/find" },
			{ "<leader>x", group = "diagnostics" },
			{ "<leader>q", group = "session" },
			{ "<leader>d", group = "debug" },
			{ "<leader>g", group = "git" },
			{ "<leader>b", group = "buffers" },
			{ "<leader>c", group = "code" },
			{ "<leader>h", group = "harpoon" },
		})
	end,
}
