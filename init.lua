-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/LuaSnip/" })
require("luasnip").config.setup({
  update_events = "TextChanged,TextChangedI",
  enable_autosnippets = true,
})

require("config.abbreviations")
