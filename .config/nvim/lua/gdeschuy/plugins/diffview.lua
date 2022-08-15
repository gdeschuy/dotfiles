local function init()
    require("diffview").setup({
        diff_binaries = false,
        git_cmd = { "git" },
        use_icons = false
    })
end

return {
    init = init
}
