-- ~/.config/nvim/lua/luasnip/snippets/c.lua (ou cpp.lua)

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local d = ls.dynamic_node
local f = ls.function_node

local function get_filename_base_uppercase(_, snip)
  local filename_base = snip.env.TM_FILENAME_BASE
  if filename_base then
    return filename_base:upper()
  end
  return ""
end

return {
  -- Header de arquivo
  s("header", {
    t({
      "// ===========================================================================",
      "// Nome do Arquivo: ",
    }),
    f(function(_, snip)
      return snip.env.TM_FILENAME
    end, {}),
    t({
      "",
      "// Autor: Natanael dos Santos Júnior",
      "// Descrição: ",
    }),
    i(1, "Breve descrição do que o arquivo faz."),
    t({
      ".",
      "// ===========================================================================",
    }),
  }, { description = "Snippet de Cabeçalho de Arquivo" }),

  -- Include guard estilo C++
  s("ifn", {
    t("#ifndef "),
    f(get_filename_base_uppercase, {}),
    t("_HPP"),
    t({ "", "#define " }),
    f(get_filename_base_uppercase, {}),
    t("_HPP"),
    t({ "", "" }),
    i(0),
    t({ "", "#endif" }),
  }, { description = "Ifndef Guard" }),

  -- Comentário grande
  s("bigcm", {
    t({
      "// ============================================================================",
      "// ",
    }),
    i(0),
    t({
      "",
      "// ============================================================================",
    }),
  }, { description = "Comentário separado por '='" }),

  -- Fast cout
  s("pf", {
    t("std::cout << "),
    i(0),
    t(" << std::endl;"),
  }, { description = "Print format snippet" }),

  -- Fast cout (sem endl)
  s("pfl", {
    t("std::cout << "),
    i(0),
    t(";"),
  }, { description = "Print format snippet" }),
}
