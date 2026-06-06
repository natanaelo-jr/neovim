return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPost", "BufWritePost" },
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			python = { "flake8" },
			lua = { "luacheck" },
			c = { "cppcheck" },
			cpp = { "cppcheck" },
		}

		-- Roda o linter automaticamente ao salvar e ao entrar no buffer
		vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost" }, {
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}
