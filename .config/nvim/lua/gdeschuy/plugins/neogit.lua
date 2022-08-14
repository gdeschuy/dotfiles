local function init()
    local ok, neogit = pcall(require, "neogit")
    if not ok then
        return
    end
    
    neogit.setup {
        integrations = {
            diffview = true,
        },
    }
end

return {
    init = init
}
