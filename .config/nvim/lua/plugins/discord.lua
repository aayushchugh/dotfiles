return {
  {
    "vyfor/cord.nvim",
    build = "sh -c './build || .\\build'", -- I use fish
    event = "VeryLazy",
    opts = {}, -- calls require('cord').setup()
  },
}
