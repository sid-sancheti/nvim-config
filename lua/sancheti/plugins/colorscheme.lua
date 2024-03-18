return {
  "morhetz/gruvbox",
  priority = 1000, -- make sure to load before all other plugins
  config = function()
    -- load the colorscheme
    vim.cmd([[colorscheme gruvbox]])
  end,
}
