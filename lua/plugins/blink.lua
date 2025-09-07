local has_words_before = function()
  local col = vim.api.nvim_win_get_cursor(0)[2]
  if col == 0 then
    return false
  end
  local line = vim.api.nvim_get_current_line()
  return line:sub(col, col):match("%s") == nil
end

return {
  "saghen/blink.cmp", -- or whatever the plugin's repo name is
  dependencies = {
    "micangl/cmp-vimtex",
    dependencies = {
      {
        "saghen/blink.compat",
        version = "*",
        lazy = true,
        opts = {},
      },
    },
  },
  opts = {
    completion = { list = { selection = { preselect = false, auto_insert = false } } },
    sources = {
      -- Remove 'buffer' if you don't want text completions, by default it's only enabled when LSP returns no items
      default = { "vimtex", "lsp", "path", "snippets" },
      buffer = false,
      providers = {
        vimtex = {
          name = "vimtex",
          min_keyword_length = 2,
          module = "blink.compat.source",
          score_offset = 80,
        },
      },
    },
    -- in your blink configuration
    keymap = {
      preset = "none",

      -- If completion hasn't been triggered yet, insert the first suggestion; if it has, cycle to the next suggestion.
      ["<Tab>"] = {
        function(cmp)
          if has_words_before() then
            return cmp.select_next()
          end
        end,
        "fallback",
      },
      -- Navigate to the previous suggestion or cancel completion if currently on the first one.
      ["<S-Tab>"] = { "select_prev" },
      ["<CR>"] = {
        function(cmp)
          if cmp.snippet_active() then
            return cmp.accept()
          else
            return cmp.select_and_accept()
          end
        end,
        "fallback",
      },
    },
  },
}
