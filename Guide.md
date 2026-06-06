# Guia de comandos — Neovim config

> Referência rápida para todos os plugins instalados na sua config.  
> `<leader>` = `Space`

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

## Keymaps gerais

| Tecla | Ação |
|---|---|
| `<leader>w` | Salvar arquivo |
| `<leader>q` | Fechar |
| `<leader>p` | Paste sem sobrescrever o registro (visual) |

---

## Buffers

| Tecla / Comando | Ação |
|---|---|
| `<Tab>` | Próximo buffer |
| `<S-Tab>` | Buffer anterior |
| `<leader>bd` | Fechar buffer |
| `<leader>bD` | Fechar buffer (forçar) |
| `<leader>bo` | Fechar todos os outros buffers |
| `<leader>bs` | Listar buffers no Telescope |

---

## LSP

| Tecla / Comando | Ação |
|---|---|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `grr` | Go to references |
| `gri` | Go to implementation |
| `grt` | Go to type definition |
| `K` | Hover — documentação do símbolo |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `[d` / `]d` | Navega entre diagnósticos |
| `:LspInfo` | Mostra qual LSP está ativo |
| `:LspRestart` | Reinicia o LSP do buffer atual |

---

## Mason — gerenciador de LSP/linters/formatters

| Comando | Ação |
|---|---|
| `:Mason` | Abre o gerenciador |
| `:MasonInstall <nome>` | Instala um servidor (ex: `pyright`) |

Linters instalados via Mason:

| Filetype | Linter |
|---|---|
| Python | `flake8` — `:MasonInstall flake8` |
| Lua | `luacheck` — `:MasonInstall luacheck` |
| C / C++ | `cppcheck` — `sudo pacman -S cppcheck` |

---

## Completion — blink.cmp

| Tecla | Ação |
|---|---|
| `<Tab>` | Próximo item / avança no snippet |
| `<S-Tab>` | Item anterior / volta no snippet |
| `<S-CR>` | Aceita sugestão |
| `<C-space>` | Abre o menu manualmente |
| `<C-e>` | Fecha o menu |
| `<C-d>` | Scroll documentação para cima |
| `<C-f>` | Scroll documentação para baixo |

---

## Snippets — LuaSnip

Snippets customizados em `~/.config/nvim/lua/snippets/`.

### C / C++

| Trigger | Descrição |
|---|---|
| `header` | Cabeçalho de arquivo com nome e autor |
| `ifn` | Include guard `#ifndef` |
| `bigcm` | Comentário separado por `=` |
| `pf` | `std::cout << ... << std::endl;` |
| `pfl` | `std::cout << ...;` |

### TypeScript / TypescriptReact

| Trigger | Descrição |
|---|---|
| `rfc` | Componente React com nome do arquivo |
| `rfct` | Componente React com nome customizável |

---

## Copilot

| Comando / Tecla | Ação |
|---|---|
| `:Copilot status` | Verifica autenticação |
| `:Copilot auth` | Autentica com o GitHub |
| `:Copilot enable` | Ativa |
| `:Copilot disable` | Desativa |
| `<leader>cp` | Toggle Copilot (com notificação) |

---

## Telescope — busca fuzzy

| Tecla / Comando | Ação |
|---|---|
| `<leader>ff` | Busca arquivos no projeto |
| `<leader>fg` | Live grep |
| `<leader>bs` | Lista buffers abertos |
| `:Telescope help_tags` | Busca na documentação |
| `:Telescope lsp_document_symbols` | Símbolos do arquivo atual |
| `:Telescope lsp_workspace_symbols` | Símbolos do projeto |
| `:Telescope git_commits` | Histórico de commits |
| `:Telescope git_status` | Arquivos modificados |
| **Dentro do Telescope** | |
| `<C-j>` / `<C-k>` | Navega nos resultados |
| `<CR>` | Abre arquivo |
| `<C-v>` | Abre em split vertical |
| `<C-x>` | Abre em split horizontal |
| `<C-t>` | Abre em nova tab |
| `<C-d>` | Deleta buffer (na lista de buffers) |
| `<Esc>` | Fecha |

---

## Harpoon 2 — navegação rápida

| Tecla | Ação |
|---|---|
| `<leader>hm` | Abre menu da lista |
| `<leader>ha` | Adiciona arquivo atual |
| `<leader>h1` | Pula para arquivo 1 |
| `<leader>h2` | Pula para arquivo 2 |
| `<leader>h3` | Pula para arquivo 3 |
| `<leader>h4` | Pula para arquivo 4 |

---

## Flash.nvim — navegação por salto

| Tecla | Modo | Ação |
|---|---|---|
| `s` | Normal / Visual | Salta digitando 2 caracteres |
| `S` | Normal / Visual | Salta por nó do Treesitter |
| `r` | Operator-pending | Remote flash |
| `R` | Operator-pending / Visual | Treesitter search |
| `<C-s>` | Command | Toggle flash na busca `/` |

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
| `<CR>` | Abre arquivo / expande pasta |
| `H` | Mostra/esconde arquivos ocultos |
| `q` | Fecha |
| `?` | Ajuda |

---

## Splits — navegação entre janelas

| Tecla | Ação |
|---|---|
| `<C-h>` | Foca split esquerdo |
| `<C-l>` | Foca split direito |
| `<C-j>` | Foca split abaixo |
| `<C-k>` | Foca split acima |

---

## Visual mode

| Tecla | Ação |
|---|---|
| `J` | Move linha(s) selecionada(s) abaixo |
| `K` | Move linha(s) selecionada(s) acima |

---

## Trouble — painel de diagnósticos

| Tecla | Ação |
|---|---|
| `<leader>xx` | Diagnósticos do projeto |
| `<leader>xX` | Diagnósticos do buffer atual |
| `<leader>cs` | Símbolos do arquivo |
| `<leader>cl` | Referências/definições LSP |
| `<leader>xL` | Location list |
| `<leader>xQ` | Quickfix list |

---

## Gitsigns — git inline

| Tecla | Ação |
|---|---|
| `]c` | Próximo hunk |
| `[c` | Hunk anterior |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hS` | Stage arquivo inteiro |
| `<leader>hR` | Reset arquivo inteiro |
| `<leader>hp` | Preview hunk |
| `<leader>hb` | Blame da linha |
| `<leader>hd` | Diff do arquivo |

---

## LazyGit

| Tecla | Ação |
|---|---|
| `<leader>gg` | Abre o LazyGit |

---

## Debug — DAP + DAP UI

| Tecla | Ação |
|---|---|
| `<F5>` | Continua / inicia debug |
| `<F10>` | Step over |
| `<F11>` | Step into |
| `<leader>db` | Toggle breakpoint |
| `<leader>du` | Toggle UI do DAP |

---

## which-key — descoberta de keymaps

| Tecla | Ação |
|---|---|
| `<leader>` (aguarda) | Mostra todos os keymaps com leader |
| `<leader>?` | Keymaps locais do buffer |

Grupos configurados:

| Prefixo | Grupo |
|---|---|
| `<leader>f` | format / find |
| `<leader>x` | diagnostics |
| `<leader>q` | session |
| `<leader>d` | debug |
| `<leader>g` | git |
| `<leader>b` | buffers |
| `<leader>c` | code / copilot |
| `<leader>h` | harpoon |

---

## Sessões — persistence.nvim

| Tecla | Ação |
|---|---|
| `<leader>qs` | Restaura sessão do diretório atual |
| `<leader>ql` | Restaura última sessão |
| `<leader>qd` | Não salvar sessão ao sair |

---

## todo-comments.nvim

| Comando | Ação |
|---|---|
| `]t` | Próximo TODO |
| `[t` | TODO anterior |
| `:TodoTelescope` | Lista todos no Telescope |
| `:TodoTrouble` | Lista no Trouble |

Tags: `TODO`, `FIXME`, `HACK`, `WARN`, `NOTE`, `PERF`, `TEST`

---

## Comment.nvim

| Tecla | Modo | Ação |
|---|---|---|
| `gcc` | Normal | Comenta/descomenta linha |
| `gbc` | Normal | Comenta em bloco |
| `gc` | Visual | Comenta seleção |
| `gb` | Visual | Comenta em bloco |
| `gcO` | Normal | Comentário acima |
| `gco` | Normal | Comentário abaixo |
| `gcA` | Normal | Comentário no fim da linha |

---

## nvim-surround

| Tecla | Ação | Exemplo |
|---|---|---|
| `ys<motion><char>` | Adiciona surrounding | `ysiw"` → envolve palavra com `"` |
| `cs<old><new>` | Troca surrounding | `cs"'` → troca `"` por `'` |
| `ds<char>` | Remove surrounding | `ds"` → remove `"` |
| `S<char>` | Surrounding em seleção visual | `S(` → envolve com `()` |

---

## conform.nvim — formatação

| Comando | Ação |
|---|---|
| `<leader>f` | Formata o buffer atual |
| `:ConformInfo` | Mostra formatters disponíveis |

Formatters por filetype: `stylua`, `black`, `prettier`, `clang_format`, `rustfmt`

---

## noice.nvim

| Comando | Ação |
|---|---|
| `:Noice` | Histórico de mensagens |
| `:Noice dismiss` | Fecha notificações |

---

## indent-blankline

| Comando | Ação |
|---|---|
| `:IBLToggle` | Liga/desliga guias de indentação |

---

*Atualizado em junho de 2026*
