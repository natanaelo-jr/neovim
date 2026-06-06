-- ~/.config/nvim/lua/luasnip/snippets/javascriptreact.lua

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local rep = require("luasnip.extras").rep

return {
  s("rfc", {
    t("const "),
    f(function(_, snip)
      return snip.env.TM_FILENAME_BASE
    end, {}),
    t(": React.FC = () => {"),
    t({
      "",
      "  return (",
      "    <div>",
      "      ",
    }),
    i(0, "Content"),
    t({
      "",
      "    </div>",
      "  );",
      "};",
      "",
      "export default ",
    }),
    f(function(_, snip)
      return snip.env.TM_FILENAME_BASE
    end, {}),
    t(";"),
  }, { description = "ReactTS Component" }),

  s("rfct", {
    t("const "),
    i(1, "ComponentName"),
    t(": React.FC = () => {"),
    t({
      "",
      "  return (",
      "    <div>",
      "      ",
    }),
    i(0, "Content"),
    t({
      "",
      "    </div>",
      "  );",
      "};",
      "",
      "export default ",
    }),
    rep(1),

    t(";"),
  }, { description = "ReactTS Component" }),
}
