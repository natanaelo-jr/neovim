return {
	"folke/persistence.nvim",
	event = "BufReadPre",
	opts = {},
	keys = {
		{
			"<leader>qs",
			function()
				require("persistence").load()
			end,
			desc = "Restaurar sessão",
		},
		{
			"<leader>ql",
			function()
				require("persistence").load({ last = true })
			end,
			desc = "Última sessão",
		},
		{
			"<leader>qd",
			function()
				require("persistence").stop()
			end,
			desc = "Não salvar sessão",
		},
	},
}
