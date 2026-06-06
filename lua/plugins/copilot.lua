return {

	"zbirenbaum/copilot.lua",
	opts = {
		suggestion = {
			enabled = false, -- Certifique-se de que está como você quer
			auto_trigger = true,
			keymap = {
				accept = "<C-l>",
				next = "<M-,>",
				prev = "<M-.>",
				dismiss = "<C-g>",
			},
		},
		panel = {
			enabled = false,
		},
		-- Esta é a parte crucial para o encoding
		server_opts = {
			settings = {}, -- Mantenha vazio se não tiver outras configurações
			capabilities = {
				textDocument = {
					positionEncoding = "utf-8", -- <--- Esta é a linha-chave
				},
			},
		},
	},
}
