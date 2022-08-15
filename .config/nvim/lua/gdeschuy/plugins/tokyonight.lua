local function init()
  -- Theme settings
  vim.g.tokyonight_style = "day"
  vim.g.tokyonight_italic_functions = true
  vim.g.tokyonight_italic_comments = true
  vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
  vim.g.tokyonight_transparent = true
  vim.g.tokyonight_transparent_sidebar = false
  vim.g.tokyonight_dark_sidebar = true
  vim.g.tokyonight_dark_float = true
  tokyonight_day_brightness = 0.2

  -- Load colorscheme
  vim.cmd[[colorscheme tokyonight]]
end

return {
  init = init
}
