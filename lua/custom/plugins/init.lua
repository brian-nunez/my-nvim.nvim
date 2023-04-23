-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.g.maplocalleader = " "

vim.keymap.set("n", "j", "jzz");
vim.keymap.set("n", "k", "kzz");

vim.keymap.set("n", "<leader>dir", vim.cmd.Ex)
vim.keymap.set("n", "<leader>format", "=ap")

-- Harpoon mapping
vim.keymap.set("n", "<leader>ha", mark.add_file)
vim.keymap.set("n", "<leader>hm", ui.toggle_quick_menu)
vim.keymap.set("n", "<C-s>", ui.nav_next)
vim.keymap.set("n", "<C-a>", mark.rm_file)
vim.keymap.set("n", "<C-c>", mark.clear_all)

vim.keymap.set("n", "<leader>h1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>h2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>h3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>h4", function() ui.nav_file(4) end)

return {}

