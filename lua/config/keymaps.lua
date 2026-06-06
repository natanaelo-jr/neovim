vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

map("n", "<leader>pv", vim.cmd.Ex, { desc = "Open file explorer" }) -- abrir file explorer
map("n", "<leader>w", ":w<CR>", { desc = "Save file" }) -- salvar arquivo
map("n", "<leader>q", ":q<CR>", { desc = "Quit" }) -- sair do Neovim

map("n", "<Tab>", ":bnext<CR>", { desc = "Next buffer" })
map("n", "<S-Tab>", ":bprev<CR>", { desc = "Previous buffer" })
map("n", "<leader>bs", ":Telescope buffers<CR>", { desc = "List buffers" })

-- LSP (esses normalmente ficam num on_attach, mas funcionam global também)
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "K", vim.lsp.buf.hover, { desc = "Hover docs" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })

-- Format manual
map("n", "<leader>f", function()
	require("conform").format({ async = true })
end, { desc = "Format buffer" })

-- DAP
map("n", "<F5>", function()
	require("dap").continue()
end, { desc = "Debug: continue" })
map("n", "<F10>", function()
	require("dap").step_over()
end, { desc = "Debug: step over" })
map("n", "<F11>", function()
	require("dap").step_into()
end, { desc = "Debug: step into" })
map("n", "<leader>db", function()
	require("dap").toggle_breakpoint()
end, { desc = "Toggle breakpoint" })
map("n", "<leader>du", function()
	require("dapui").toggle()
end, { desc = "Toggle DAP UI" })

-- Janelas — navegação entre splits
map("n", "<C-h>", "<C-w>h", { desc = "Split esquerdo" })
map("n", "<C-l>", "<C-w>l", { desc = "Split direito" })
map("n", "<C-j>", "<C-w>j", { desc = "Split abaixo" })
map("n", "<C-k>", "<C-w>k", { desc = "Split acima" })

-- Mover linhas selecionadas no visual mode
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move linha abaixo" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move linha acima" })

-- Colar sem sobrescrever o registro
map("x", "<leader>p", '"_dP', { desc = "Paste sem perder registro" })

map("n", "<leader>cp", function()
	if vim.g.copilot_enabled == false then
		vim.cmd("Copilot enable")
		vim.g.copilot_enabled = true
		vim.notify("Copilot ativado", vim.log.levels.INFO)
	else
		vim.cmd("Copilot disable")
		vim.g.copilot_enabled = false
		vim.notify("Copilot desativado", vim.log.levels.WARN)
	end
end, { desc = "Toggle Copilot" })

map("n", "<leader>bd", ":bd<CR>", { desc = "Fechar buffer" })
map("n", "<leader>bD", ":bd!<CR>", { desc = "Fechar buffer (forçar)" })
map("n", "<leader>bo", ":%bd|e#|bd#<CR>", { desc = "Fechar outros buffers" })
