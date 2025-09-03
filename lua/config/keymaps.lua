-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.o.keymap = "russian-jcukenwin"
vim.opt.iminsert = 0
vim.opt.imsearch = 0
vim.keymap.set("i", "<C-Bslash>", "<C-^>", { desc = "Toggle keymap" })
-- make $ and 0 work with visual lines by default
vim.keymap.set({ "n", "v" }, "g$", "$")
vim.keymap.set({ "n", "v" }, "$", "g$")
vim.keymap.set({ "n", "v" }, "g0", "0")
vim.keymap.set({ "n", "v" }, "0", "g0")
-- save file like in doom EMACS
vim.keymap.set({ "n" }, "<leader>fs", ":w<CR>")
-- Tab to navigate and select autocomplete
local keyset = vim.keymap.set
-- Autocomplete
function _G.check_back_space()
  local col = vim.fn.col(".") - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match("%s") ~= nil
end
-- Visual mode indenting
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect line" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect line" })
