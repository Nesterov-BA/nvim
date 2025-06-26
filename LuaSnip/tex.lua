local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

ls.add_snippets("tex", {
  s({
    trig = "rar",
    name = "Right Arrow",
    dscr = "Expands to \\rightarrow in TeX",
  }, {
    t("\\rightarrow"),
  }),
})

ls.add_snippets("tex", {
  s({
    trig = "lar",
    name = "Left Arrow",
    dscr = "Expands to \\leftarrow in TeX",
  }, {
    t("\\leftarrow"),
  }),
})

ls.add_snippets("tex", {
  s({
    trig = "lrar",
    name = "Double Left Right Arrow",
    dscr = "Expands to \\leftrightarrow in TeX",
  }, {
    t("\\leftrightarrow "),
  }),
})

ls.add_snippets("tex", {
  s({
    trig = "Rar",
    name = "Double Right Arrow",
    dscr = "Expands to \\Rightarrow in TeX",
  }, {
    t("\\Rightarrow"),
  }),
})

ls.add_snippets("tex", {
  s({
    trig = "Lar",
    name = "Double Left Arrow",
    dscr = "Expands to \\Leftarrow in TeX",
  }, {
    t("\\Leftarrow"),
  }),
})

ls.add_snippets("tex", {
  s({
    trig = "LRar",
    name = "Double Left Right Arrow",
    dscr = "Expands to \\Leftrightarrow in TeX",
  }, {
    t("\\Leftrightarrow "),
  }),
})
