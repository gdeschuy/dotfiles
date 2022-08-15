vim.keymap.set("n", "<C-f>", function()
    require("telescope.builtin").find_files()
end, { noremap = true })

vim.keymap.set("n", "<C-s>", function()
    require("telescope.builtin").grep_string({ search = vim.fn.expand("<cword>") })
end, { noremap = true })
