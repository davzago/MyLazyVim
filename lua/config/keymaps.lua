-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Motions

vim.keymap.set("n", "Q", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })

-- Telescope
vim.keymap.set("n", "<leader><leader>", function()
  Snacks.picker.files()
end, { desc = "Telescope find files" })
vim.keymap.set("n", "G", function()
  Snacks.picker.grep()
end, { desc = "Telescope live grep" })

--harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>r", mark.rm_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-1>", function()
  ui.nav_file(1)
end)
vim.keymap.set("n", "<C-2>", function()
  ui.nav_file(2)
end)
vim.keymap.set("n", "<C-3>", function()
  ui.nav_file(3)
end)
vim.keymap.set("n", "<C-1>", function()
  ui.nav_file(4)
end)

-- undoTree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
