return {
	"saghen/blink.cmp",
	lazy = false, -- É importante carregar cedo
	dependencies = {
		"rafamadriz/friendly-snippets", -- Coleção de snippets úteis
		"zbirenbaum/copilot.lua", -- adiciona aqui
		"fang2hou/blink-copilot", -- bridge entre os dois
		"L3MON4D3/LuaSnip", -- adiciona como dependência explícita
	},
	version = "v0.*",
	opts = {
		keymap = {
			["<C-CR>"] = { "select_and_accept", "fallback" },
			["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
			["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
			["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
			["<C-e>"] = { "hide" },
			["<C-d>"] = { "scroll_documentation_up" },
			["<C-f>"] = { "scroll_documentation_down" },
		},
		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer", "copilot" },
			providers = {
				copilot = {
					name = "copilot",
					module = "blink-copilot",
					score_offset = 100,
					async = true,
				},
			},
		},
		signature = { enabled = true },
		snippets = {
			preset = "luasnip",
		},
	},
	config = function(_, opts)
		require("blink.cmp").setup(opts)

		-- Carrega os snippets customizados
		local ls = require("luasnip")
		require("luasnip.loaders.from_lua").load({
			paths = { vim.fn.stdpath("config") .. "/lua/snippets" },
		})

		-- Mantém os snippets do friendly-snippets também
		require("luasnip.loaders.from_vscode").lazy_load()
	end,
}
