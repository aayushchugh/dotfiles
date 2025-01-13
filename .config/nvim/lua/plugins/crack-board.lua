return {
  {
    "boganworld/crackboard.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crackboard").setup({
        session_key = "0333ff9108c8a1de54dee359c95c98dd18e10a1732833d8e0b4a10fb280ce244",
      })
    end,
  },
}
