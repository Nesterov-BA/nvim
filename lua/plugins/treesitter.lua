return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "c",
        "cmake",
        "cpp",
        "css", -- added
        "diff",
        "dtd",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "html",
        "javascript",
        "jsdoc",
        "json",
        "json5",
        "latex", -- added
        "lua",
        "luadoc",
        "luap",
        "markdown",
        "markdown_inline",
        "ninja",
        "norg", -- added
        "printf",
        "python",
        "query",
        "regex",
        "rst",
        "scss", -- added
        "sql",
        "svelte", -- added
        "toml",
        "tsx",
        "typescript",
        "typst", -- added
        "vim",
        "vimdoc",
        "vue", -- added
        "xml",
        "yaml",
      },
      -- Auto-install missing parsers when entering a buffer
      auto_install = true,
    },
  },
}
