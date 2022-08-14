local neogit = require("neogit")

neogit.setup({})

vim.keymap.set("n", "<C-g>", function()
    neogit.open({})
end, { noremap = true })
