return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        cpp = { "clang-format" },
        tex = { "tex-fmt" },
        python = { "isort, black, autopep8" },
        markdown = { "prettier, markdown-toc" },
      },
    },
  },
}
