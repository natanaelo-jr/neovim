return {
	-- 1. Lualine: Uma barra de status limpa e rápida na parte inferior
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					theme = "auto", -- Pega a cor do seu tema principal (ex: Tokyonight)
					globalstatus = true, -- Uma única barra para todas as janelas divididas
				},
			})
		end,
	},

	-- 2. Gitsigns: Mostra adições, deleções e mudanças nas linhas (ao lado dos números)
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},

	-- 3. Noice: Substitui a linha de comando chata do Vim por balões flutuantes elegantes
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify", -- Sistema de notificações flutuantes no canto da tela
		},
		config = function()
			require("noice").setup({
				lsp = {
					-- Sobrescreve o hover do LSP para usar o visual do Noice
					override = {
						["vim.lsp.util.convert_input_to_markdown_lines"] = true,
						["vim.lsp.util.stylize_markdown"] = true,
						["cmp.entry.get_documentation"] = true,
					},
				},
				presets = {
					bottom_search = true, -- A busca (/) fica na barra inferior
					command_palette = true, -- O comando (:) abre no meio da tela
					long_message_to_split = true,
				},
			})
		end,
	},
}
