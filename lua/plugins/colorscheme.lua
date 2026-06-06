return {
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 1000, -- garantir que carregue antes de tudo
	config = function()
		require("rose-pine").setup({
			-- opções personalizadas (opcional)
			variant = "auto", -- auto, main, moon ou dawn
			dark_variant = "main",
		})

		vim.cmd.colorscheme("rose-pine")
	end,
}
