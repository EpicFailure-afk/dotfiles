-- make ; behave as :
local map = vim.keymap.set
map("n", ";", ":", { desc = "CMD enter command mode" })

-- Make Y behave like yy (yank current line)
vim.keymap.set("n", "Y", "yy", { desc = "Yank line" })
