return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      glsl_analyzer = {}, -- This automatically finds the binary in your PATH
    },
  },
}
