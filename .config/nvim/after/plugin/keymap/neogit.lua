local neogit = require("neogit")

vim.keymap.set("n", "<C-g>", function()
    neogit.open({})
end, { noremap = true })
