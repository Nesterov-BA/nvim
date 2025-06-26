-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- require("Comment").setup()
vim.opt.wrap = true
vim.opt.linebreak = true -- Break at word boundaries (instead of mid-word)
vim.opt.showbreak = "↪ " -- Optional: Prefix for wrapped lines (requires a patched font)
vim.opt.breakindent = true
vim.g.vimtex_delim_toggle_mod_list = {
  { "\\left", "\\right" },
  { "\\big", "\\big" },
}
vim.o.spell = true
vim.o.spelllang = "ru,en"
