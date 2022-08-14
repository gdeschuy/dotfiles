local function init()
    require("neogit").setup{
        integrations = {
            diffview = true
        }
    }
end

return {
    init = init
}
