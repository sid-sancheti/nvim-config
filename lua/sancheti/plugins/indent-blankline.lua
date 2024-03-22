return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  config = function()
    local ibl = require("ibl")
    ibl.setup({
      enabled = true,
      scope = {
        show_start = false,
        show_end = false,
      },
      indent = {
        char = '│',
      }
    })
  end,
}
