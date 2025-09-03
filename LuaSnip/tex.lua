local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("tex", {
  s({
    trig = "mi",
    name = "Insert inline math",
    dscr = "Expands to braces",
  }, {
    t("\\( "),
    i(1),
    t(" \\)"),
    i(0),
  }),
})
ls.add_snippets("tex", {
  s({
    trig = "mc",
    name = "Insert centered math",
    dscr = "Expands to square brackets",
  }, {
    t("\\[ "),
    i(1),
    t(" \\]"),
    i(0),
  }),
})
ls.add_snippets("tex", {
  s({
    trig = "norm",
    name = "Insert vector norm",
    dscr = "Expands to double bars",
  }, {
    t("\\| "),
    i(1),
    t(" \\|"),
    i(0),
  }),
})
ls.add_snippets("tex", {
  s({
    trig = "abs",
    name = "Insert absolute value",
    dscr = "Expands to bars",
  }, {
    t("| "),
    i(1),
    t(" |"),
    i(0),
  }),
})
