-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- Toggle Fokus zwischen Editor und Neo-Tree

-- Fokus zwischen Editor und Neo-Tree wechseln

local map = vim.keymap.set

vim.keymap.set("n", "<leader><tab>", function()
  local cur = vim.api.nvim_get_current_win()
  vim.cmd("Neotree focus")
  if cur == vim.api.nvim_get_current_win() then
    vim.cmd("wincmd l")
  end
end, { desc = "Switch focus editor ↔ NeoTree" })

map("n", "<C-q>", "<C-w>h", { desc = "Window left" })
map("n", "<C-e>", "<C-w>l", { desc = "Window right" })

vim.keymap.del("n", "<C-f>")

map("n", "<C-f>", function()
  vim.diagnostic.jump({ count = 1 })
end, {
  desc = "Next diagnostic",
})
