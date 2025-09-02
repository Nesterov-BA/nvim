return {
  "mason-org/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "shellcheck",
      "shfmt",
      "flake8",
      "clang-format", -- cpp
      "isort", -- python
      "black", -- python
      "autopep8", -- python
      "prettier", -- markdown & json
      "markdown-toc", -- markdown
      "xmlformatter",
    },
  },
}
