return {
  {
    "stevearc/conform.nvim",
    opts = {
      log_level = vim.log.levels.DEBUG, -- Enable debug logs
      formatters_by_ft = {
        cpp = { "clang-format" },
        tex = { "tex-fmt" },
        python = { "isort", "black", "autopep8" },
        markdown = { "prettier", "markdown-toc" },
        xml = { "xmlformatter" },
        json = { "prettier" },
        toml = { "pyproject-fmt" },
        html = { "prettier" },
        javascript = { "prettier" },
      },
      formatters = {
        ["clang-format"] = {
          -- args = { "-style", "SortIncludes: False" },
          prepend_args = { "--style", "{SortIncludes: false}" },
        },

        -- },
      },
    },
  },
}
