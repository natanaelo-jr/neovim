# Guia de comandos — Neovim config

> Referência rápida para todos os plugins instalados na sua config.  
> `<leader>` = `Space` por padrão no LazyVim/configs modernas.

---

## Gerenciador de plugins — lazy.nvim

| Comando | Ação |
|---|---|
| `:Lazy` | Abre a UI do gerenciador |
| `:Lazy update` | Atualiza todos os plugins |
| `:Lazy sync` | Instala + atualiza + remove o que não está mais na config |
| `:Lazy clean` | Remove plugins não usados |
| `:Lazy profile` | Mostra tempo de startup por plugin |
| `:Lazy log` | Histórico de mudanças dos plugins |

---

## LSP — nvim-lspconfig + mason

| Comando | Ação |
|---|---|
| `:Mason` | Abre o gerenciador de LSP servers, linters e formatters |
| `:MasonInstall <nome>` | Instala um servidor específico (ex: `pyright`) |
| `:LspInfo` | Mostra qual LSP está ativo no buffer atual |
| `:LspRestart` | Reinicia o LSP do buffer atual |
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | Go to references |
| `gi` | Go to implementation |
| `K` | Hover — documentação do símbolo sob o cursor |
| `<C-k>` | Signature help (parâmetros da função) |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `[d` / `]d` | Navega entre diagnósticos |
| `:lua vim.diagnostic.open_float()` | Abre diagnóstico em float |

---

## Completion — blink.cmp

| Tecla | Ação |
|---|---|
| `<Tab>` / `<S-Tab>` | Próximo / anterior item |
| `<CR>` | Confirma seleção |
| `<C-space>` | Abre o menu manualmente |
| `<C-e>` | Fecha o menu |
| `<C-d>` / `<C-f>` | Scroll na documentação |


---

## Telescope — busca fuzzy

| Comando / Tecla | Ação |
|---|---|
| `<leader>ff` | Busca arquivos no projeto |
| `<leader>fg` | Live grep (busca texto em todos os arquivos) |
| `:Telescope buffers` | Lista buffers abertos |
| `:Telescope help_tags` | Busca na documentação do Neovim |
| `:Telescope lsp_document_symbols` | Símbolos do arquivo atual |
| `:Telescope lsp_workspace_symbols` | Símbolos do projeto inteiro |
| `:Telescope git_commits` | Histórico de commits |
| `:Telescope git_status` | Arquivos modificados no git |
| **Dentro do Telescope** | |
| `<C-j>` / `<C-k>` | Navega nos resultados |
| `<CR>` | Abre o arquivo selecionado |
| `<C-v>` | Abre em split vertical |
| `<C-x>` | Abre em split horizontal |
| `<C-t>` | Abre em nova tab |
| `<Esc>` | Fecha |

---

## Harpoon 2 — navegação rápida entre arquivos

| Tecla | Ação |
|---|---|
| `<leader>a` | Adiciona arquivo atual à lista |
| `<C-e>` | Abre o menu flutuante da lista |
| `<C-1>` | Pula para o arquivo 1 da lista |
| `<C-2>` | Pula para o arquivo 2 da lista |
| `<C-3>` | Pula para o arquivo 3 da lista |
| `<C-4>` | Pula para o arquivo 4 da lista |

> **Dica**: use o Harpoon para fixar os 3–4 arquivos que você alterna com frequência num projeto. É mais rápido que qualquer fuzzy finder.

---

## Flash.nvim — navegação por salto

| Tecla | Modo | Ação |
|---|---|---|
| `s` | Normal / Visual | Salta para qualquer lugar digitando 2 caracteres |
| `S` | Normal / Visual | Salta usando nós do Treesitter (funções, blocos) |
| `r` | Operator-pending | Remote flash — aplica operador em posição distante |
| `R` | Operator-pending / Visual | Treesitter search |
| `<C-s>` | Command | Liga/desliga flash na busca `/` |

> **Exemplo**: `ys` + `s` + `2 chars` para surround em posição remota.

---

## Neo-tree — explorador de arquivos

| Tecla / Comando | Ação |
|---|---|
| `<leader>e` | Toggle do explorador |
| `<leader>o` | Foca no explorador |
| **Dentro do Neo-tree** | |
| `a` | Cria arquivo (ou pasta se terminar com `/`) |
| `d` | Deleta |
| `r` | Renomeia |
| `y` | Copia |
| `x` | Corta |
| `p` | Cola |
| `<CR>` ou `o` | Abre arquivo / expande pasta |
| `H` | Mostra/esconde arquivos ocultos |
| `q` | Fecha o Neo-tree |
| `?` | Ajuda com todos os atalhos |

---

## Trouble — painel de diagnósticos

| Tecla | Ação |
|---|---|
| `<leader>xx` | Toggle diagnósticos do projeto inteiro |
| `<leader>xX` | Toggle diagnósticos só do buffer atual |
| `<leader>cs` | Toggle símbolos do arquivo |
| `<leader>cl` | Toggle referências/definições LSP |
| `<leader>xL` | Toggle location list |
| `<leader>xQ` | Toggle quickfix list |
| **Dentro do Trouble** | |
| `j` / `k` | Navega pelos itens |
| `<CR>` | Vai até o problema |
| `q` | Fecha |

---

## Gitsigns — integração git inline

| Tecla / Comando | Ação |
|---|---|
| `]c` | Próximo hunk (mudança) |
| `[c` | Hunk anterior |
| `<leader>hs` | Stage do hunk sob o cursor |
| `<leader>hr` | Reset do hunk sob o cursor |
| `<leader>hS` | Stage de todo o arquivo |
| `<leader>hR` | Reset de todo o arquivo |
| `<leader>hp` | Preview do hunk em float |
| `<leader>hb` | Blame da linha atual |
| `<leader>hd` | Diff do arquivo atual |
| `:Gitsigns toggle_current_line_blame` | Liga/desliga blame inline |

---

## which-key — descoberta de keymaps

| Tecla | Ação |
|---|---|
| `<leader>` (aguarda) | Mostra todos os keymaps com `<leader>` |
| `<leader>?` | Mostra keymaps locais do buffer |
| `g` (aguarda) | Mostra keymaps do `g` |
| `z` (aguarda) | Mostra keymaps do `z` |

---

## nvim-surround — surroundings

| Tecla | Ação | Exemplo |
|---|---|---|
| `ys<motion><char>` | Adiciona surrounding | `ysiw"` → envolve palavra com `"` |
| `cs<old><new>` | Troca surrounding | `cs"'` → troca `"` por `'` |
| `ds<char>` | Remove surrounding | `ds"` → remove as `"` |
| `S<char>` | Surrounding em seleção visual | Seleciona + `S(` → envolve com `()` |

---

## Comment.nvim — comentários

| Tecla | Modo | Ação |
|---|---|---|
| `gcc` | Normal | Comenta/descomenta a linha atual |
| `gbc` | Normal | Comenta em bloco |
| `gc` | Visual | Comenta as linhas selecionadas |
| `gb` | Visual | Comenta em bloco |
| `gcO` | Normal | Insere comentário na linha acima |
| `gco` | Normal | Insere comentário na linha abaixo |
| `gcA` | Normal | Insere comentário no final da linha |

---

## conform.nvim — formatação

| Comando / Tecla | Ação |
|---|---|
| `:ConformInfo` | Mostra formatters disponíveis para o buffer atual |
| `<leader>f` | Formata o arquivo (se você mapeou — ver nota) |
| Automático ao salvar | Roda ao `BufWritePre` com timeout de 500ms |

> **Nota**: adicione este keymap no seu `keymaps.lua` se ainda não tiver:  
> `vim.keymap.set("n", "<leader>f", function() require("conform").format() end)`

---

## nvim-lint — linting

O lint roda automaticamente ao salvar (`BufWritePost`) e ao abrir (`BufReadPost`).  
Os linters precisam estar instalados no sistema ou via Mason:

| Filetype | Linter | Instalar via Mason |
|---|---|---|
| Python | `flake8` | `:MasonInstall flake8` |
| Lua | `luacheck` | `:MasonInstall luacheck` |
| C / C++ | `cppcheck` | Instalar pelo pacman: `sudo pacman -S cppcheck` |

---

## nvim-dap + nvim-dap-ui — debug

> ⚠️ Requer configuração adicional do arquivo `dap.lua` — ver seção abaixo.

| Tecla sugerida | Ação |
|---|---|
| `<F5>` | Continua / inicia o debug |
| `<F10>` | Step over |
| `<F11>` | Step into |
| `<F12>` | Step out |
| `<leader>db` | Toggle breakpoint |
| `<leader>dB` | Breakpoint com condição |
| `<leader>du` | Toggle UI do DAP |
| `<leader>dr` | Abre o REPL |

> **Esses keymaps precisam ser adicionados manualmente.** Veja a configuração recomendada abaixo.

---

## todo-comments.nvim — TODOs no código

| Comando | Ação |
|---|---|
| `]t` | Próximo TODO |
| `[t` | TODO anterior |
| `:TodoTelescope` | Lista todos os TODOs no Telescope |
| `:TodoTrouble` | Lista no painel do Trouble |
| `:TodoQuickFix` | Lista na quickfix list |

Tags reconhecidas: `TODO`, `FIXME`, `HACK`, `WARN`, `NOTE`, `PERF`, `TEST`

---

## bufferline.nvim — tabs de buffers

| Tecla / Comando | Ação |
|---|---|
| `:BufferLineCycleNext` | Próximo buffer |
| `:BufferLineCyclePrev` | Buffer anterior |
| `:BufferLineCloseOthers` | Fecha todos exceto o atual |
| `:BufferLinePickClose` | Escolhe qual buffer fechar visualmente |

> **Dica**: mapeie `<Tab>` / `<S-Tab>` para ciclar:  
> `vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")`  
> `vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>")`

---

## indent-blankline — guias de indentação

Funciona automaticamente. Sem comandos necessários.  
Para toggle: `:IBLToggle`

---

## noice.nvim — UI da linha de comando

| Comando | Ação |
|---|---|
| `:Noice` | Histórico de todas as mensagens |
| `:Noice dismiss` | Fecha notificações visíveis |
| `:Noice disable` | Desativa o Noice temporariamente |
| `:Noice enable` | Reativa |
| `<leader>sn` | (se mapeado) Busca notificações no Telescope |

---

## Configurações pendentes recomendadas

### 1. Corrigir nvim-dap-ui (sem config)

Substitua o conteúdo de `~/.config/nvim/lua/plugins/dap.lua` por:

```lua
return {
  {
    "mfussenegger/nvim-dap",
    dependencies = { "nvim-neotest/nvim-nio" },
    keys = {
      { "<F5>",       function() require("dap").continue() end,          desc = "Debug: Continue" },
      { "<F10>",      function() require("dap").step_over() end,         desc = "Debug: Step Over" },
      { "<F11>",      function() require("dap").step_into() end,         desc = "Debug: Step Into" },
      { "<F12>",      function() require("dap").step_out() end,          desc = "Debug: Step Out" },
      { "<leader>db", function() require("dap").toggle_breakpoint() end, desc = "Debug: Toggle Breakpoint" },
      { "<leader>dr", function() require("dap").repl.open() end,         desc = "Debug: Open REPL" },
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    keys = {
      { "<leader>du", function() require("dapui").toggle() end, desc = "Debug: Toggle UI" },
    },
    config = function()
      local dap, dapui = require("dap"), require("dapui")
      dapui.setup()
      -- Abre/fecha a UI automaticamente ao iniciar/terminar o debug
      dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
      dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
      dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end
    end,
  },
}
```

### 2. Resolver conflito de tema

Você tem `rose-pine` e `tokyonight` com `colorscheme` duplicado.  
Delete o arquivo `themes.lua` antigo (ou o que contém o tema que não quer usar) e mantenha apenas um com `priority = 1000`.

### 3. Instalar dependências do sistema (Arch)

```bash
sudo pacman -S imagemagick cppcheck
pip install flake8 --user
```

### 4. Keymap para format manual (opcional)

Adicione no seu `~/.config/nvim/lua/config/keymaps.lua`:

```lua
vim.keymap.set("n", "<leader>f", function()
  require("conform").format({ async = true })
end, { desc = "Format buffer" })

vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Prev buffer" })
```

---

*Gerado em junho de 2026 — config base: lazy.nvim*
