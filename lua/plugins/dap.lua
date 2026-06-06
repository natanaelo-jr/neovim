return {
	{
		"mfussenegger/nvim-dap",
		dependencies = { "nvim-neotest/nvim-nio" },
		keys = {
			{
				"<F5>",
				function()
					require("dap").continue()
				end,
				desc = "Debug: Continue",
			},
			{
				"<F10>",
				function()
					require("dap").step_over()
				end,
				desc = "Debug: Step Over",
			},
			{
				"<F11>",
				function()
					require("dap").step_into()
				end,
				desc = "Debug: Step Into",
			},
			{
				"<leader>db",
				function()
					require("dap").toggle_breakpoint()
				end,
				desc = "Toggle Breakpoint",
			},
			{
				"<leader>dr",
				function()
					require("dap").repl.open()
				end,
				desc = "Debug: Open REPL",
			},
		},
		config = function()
			local dap = require("dap")

			-- ── C / C++ ──────────────────────────────────────────────────────────
			dap.adapters.codelldb = {
				type = "server",
				port = "${port}",
				executable = {
					command = vim.fn.stdpath("data") .. "/mason/bin/codelldb",
					args = { "--port", "${port}" },
				},
			}

			dap.configurations.cpp = {
				{
					name = "Launch",
					type = "codelldb",
					request = "launch",
					program = function()
						return vim.fn.input("Executável: ", vim.fn.getcwd() .. "/", "file")
					end,
					cwd = "${workspaceFolder}",
					stopOnEntry = false,
					args = {},
				},
			}

			dap.configurations.c = dap.configurations.cpp

			-- ── Python ───────────────────────────────────────────────────────────
			dap.adapters.python = {
				type = "executable",
				command = vim.fn.stdpath("data") .. "/mason/bin/debugpy-adapter",
			}

			dap.configurations.python = {
				{
					name = "Launch file",
					type = "python",
					request = "launch",
					program = "${file}",
					pythonPath = function()
						return vim.fn.exepath("python3")
					end,
				},
			}
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
		keys = {
			{
				"<leader>du",
				function()
					require("dapui").toggle()
				end,
				desc = "Debug: Toggle UI",
			},
		},
		config = function()
			local dap, dapui = require("dap"), require("dapui")

			dapui.setup()

			-- Abre/fecha a UI automaticamente ao iniciar/terminar o debug
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end
		end,
	},
}
