return {
  "lervag/vimtex",
  lazy = false, -- load immediately (not lazy-loaded)
  init = function()
    -- VimTeX configuration
    vim.g.vimtex_view_method = "zathura"
    vim.g.vimtex_view_forward_search_on_start = false
    vim.g.vimtex_compiler_latexmk = {
      aux_dir = "/home/boris/.texfiles/aux",
    }
  end,
}
