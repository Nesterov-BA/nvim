return {
  -- Disable nvim-cmp
  {
    "hrsh7th/nvim-cmp",
    enabled = false, -- Completely disable nvim-cmp
  },
  -- Also disable related plugins (optional)
  {
    "hrsh7th/cmp-buffer",
    enabled = false,
  },
  {
    "hrsh7th/cmp-path",
    enabled = false,
  },
  -- Add other cmp plugins you want to disable
}
