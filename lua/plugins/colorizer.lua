return {
	"norcalli/nvim-colorizer.lua",
	config = function()
		require("colorizer").setup({
			-- destaque cores nos seguintes tipos de arquivos
			"css",
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"html",
			"lua",
			"json",
			"tailwindcss", -- pra garantir que ele pegue classes do tailwind
			"*", -- pra pegar em todos os arquivos, se quiser
		}, {
			RGB = true, -- destaque rgb()
			RRGGBB = true, -- destaque #rrggbb
			names = false, -- destaque nomes de cores CSS (ex: "Blue")
			tailwind = true, -- destaque classes tailwind (é experimental)
			mode = "background", -- ou "foreground"
		})
	end,
}
