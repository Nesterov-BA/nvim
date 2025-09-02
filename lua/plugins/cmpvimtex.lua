return {
  "hrsh7th/nvim-cmp",
  dependencies = { "micangl/cmp-vimtex" },
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    table.insert(opts.sources, { name = "vimtex" })
  end,
}
