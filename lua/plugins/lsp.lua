return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "clangd", "pyright", "ts_ls", "html", "cssls" },
			handlers = {
				function(server_name) -- Handler padrão para todos os servidores
					require("lspconfig")[server_name].setup({
						-- Integração de capacidades com o blink.cmp
						capabilities = require("blink.cmp").get_lsp_capabilities(),
					})
				end,
			},
		})
	end,
}
