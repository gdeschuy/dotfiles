vim.keymap.set("n", "<C-f>", function()
    require("telescope.builtin").find_files()
end, { noremap = true })
