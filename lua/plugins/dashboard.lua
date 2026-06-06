return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("dashboard").setup({
			theme = "doom",
			config = {
				header = {
					"                                                     ",
					"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
					"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
					"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
					"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
					"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
					"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
					"                                                     ",
				},
				center = {
					{
						icon = "  ",
						icon_hl = "Title",
						desc = "Novo arquivo",
						desc_hl = "String",
						key = "n",
						key_hl = "Number",
						action = "enew",
					},
					{
						icon = "  ",
						icon_hl = "Title",
						desc = "Buscar arquivo",
						desc_hl = "String",
						key = "f",
						key_hl = "Number",
						action = "Telescope find_files",
					},
					{
						icon = "  ",
						icon_hl = "Title",
						desc = "Buscar texto",
						desc_hl = "String",
						key = "g",
						key_hl = "Number",
						action = "Telescope live_grep",
					},
					{
						icon = "  ",
						icon_hl = "Title",
						desc = "Restaurar sessão",
						desc_hl = "String",
						key = "s",
						key_hl = "Number",
						action = "lua require('persistence').load()",
					},
					{
						icon = "  ",
						icon_hl = "Title",
						desc = "Configuração",
						desc_hl = "String",
						key = "c",
						key_hl = "Number",
						action = "edit ~/.config/nvim/init.lua",
					},
					{
						icon = "󰗼  ",
						icon_hl = "Title",
						desc = "Sair",
						desc_hl = "String",
						key = "q",
						key_hl = "Number",
						action = "qa",
					},
				},
				footer = function()
					local stats = require("lazy").stats()
					return {
						"⚡ " .. stats.loaded .. "/" .. stats.count .. " plugins carregados",
					}
				end,
			},
		})
	end,
}
