-- Harpoon
vim.keymap.set("n", "<C-a>", function()
    require("harpoon.mark").add_file()
end, { silent = true })

vim.keymap.set("n", "<C-e>", function()
    require("harpoon.ui").toggle_quick_menu()
end, { silent = true })

vim.keymap.set("n", "<C-j>", function()
    require("harpoon.ui").nav_file(1) 
end, { silent = true})

vim.keymap.set("n", "<C-k>", function()
    require("harpoon.ui").nav_file(2) 
end, { silent = true})

vim.keymap.set("n", "<C-l>", function()
    require("harpoon.ui").nav_file(3) 
end, { silent = true})

vim.keymap.set("n", "<C-m>", function()
    require("harpoon.ui").nav_file(4) 
end, { silent = true})

-- Telescope
vim.keymap.set("n", "<C-f>", function()
    require("telescope.builtin").find_files()
end, { noremap = true })

-- Undo Tree
vim.api.nvim_set_keymap("n", "u", "<cmd>:UndotreeShow<CR>", { noremap = true })
