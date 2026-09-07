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
-- vimtex nice things
vim.keymap.set({ "n" }, "<leader>rd", "<plug>(vimtex-delim-toggle-modifier)")
vim.keymap.set({ "n" }, "<leader>rm", "<plug>(vimtex-env-toggle-math)")
vim.keymap.set({ "n" }, "<leader>re", "<plug>(vimtex-env-change)")
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

-- Press F5 to run the current file with python3
-- Function to run current file based on filetype
local function run_file()
  local ft = vim.bo.filetype
  local cmd = ""

  if ft == "python" then
    cmd = "python %"
  elseif ft == "javascript" or ft == "typescript" then
    cmd = "node %"
  elseif ft == "go" then
    cmd = "go run %"
  elseif ft == "rust" then
    cmd = "cargo run"
  elseif ft == "sh" or ft == "bash" then
    cmd = "bash %"
  elseif ft == "lua" then
    cmd = "lua %"
  elseif ft == "ruby" then
    cmd = "ruby %"
  elseif ft == "php" then
    cmd = "php %"
  elseif ft == "java" then
    -- Java requires compilation first
    cmd = "javac % && java %:r"
  elseif ft == "c" or ft == "cpp" then
    -- C/C++ compile and run
    cmd = "make && ./a.out"
  else
    vim.notify("No runner configured for filetype: " .. ft, vim.log.levels.WARN)
    return
  end

  vim.cmd("w") -- Save the file
  vim.cmd("!" .. cmd) -- Run the command
end

-- Map F5 to the function
vim.keymap.set("n", "<F5>", run_file, { desc = "Run current file based on filetype" })
