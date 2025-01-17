return {
  {
    -- Use Oxocarbon instead of Rose-Pine
    "nyoom-engineering/oxocarbon.nvim",
    name = "oxocarbon",
    priority = 1000,
    config = function()
      -- Optionally set background, then load Oxocarbon
      vim.opt.background = "dark"
      vim.cmd("colorscheme oxocarbon")
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

      vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
      vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
      vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "none" })
      vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" })
      vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = "none" })
      vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "none" })
      vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "none" })
      vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = "none" })
    end,
  },

  {
    "mawkler/modicator.nvim",
    dependencies = { "nyoom-engineering/oxocarbon.nvim" },
    init = function()
      vim.o.cursorline = false
      vim.o.number = true
      vim.o.termguicolors = true
    end,
    opts = {},
  },
}

-- return {
--   {
--     "rose-pine/neovim",
--     name = "rose-pine",
--     priority = 1000,
--     config = function()
--       require("rose-pine").setup({
--         variant = "auto", -- auto, main, moon, or dawn
--         dark_variant = "main", -- main, moon, or dawn
--         dim_inactive_windows = false,
--         extend_background_behind_borders = true,
--
--         enable = {
--           terminal = true,
--           legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
--           migrations = true, -- Handle deprecated options automatically
--         },
--
--         styles = {
--           bold = true,
--           italic = true,
--           transparency = true,
--         },
--
--         groups = {
--           border = "muted",
--           link = "iris",
--           panel = "surface",
--
--           error = "love",
--           hint = "iris",
--           info = "foam",
--           note = "pine",
--           todo = "rose",
--           warn = "gold",
--
--           git_add = "foam",
--           git_change = "rose",
--           git_delete = "love",
--           git_dirty = "rose",
--           git_ignore = "muted",
--           git_merge = "iris",
--           git_rename = "pine",
--           git_stage = "iris",
--           git_text = "rose",
--           git_untracked = "subtle",
--
--           h1 = "iris",
--           h2 = "foam",
--           h3 = "rose",
--           h4 = "gold",
--           h5 = "pine",
--           h6 = "foam",
--         },
--
--         palette = {
--           -- Override the builtin palette per variant
--           -- moon = {
--           --     base = '#18191a',
--           --     overlay = '#363738',
--           -- },
--         },
--
--         highlight_groups = {
--           TelescopeBorder = { fg = "highlight_high", bg = "none" },
--           TelescopeNormal = { bg = "none" },
--           TelescopePromptNormal = { bg = "base" },
--           TelescopeResultsNormal = { fg = "subtle", bg = "none" },
--           TelescopeSelection = { fg = "text", bg = "base" },
--           TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
--
--           -- Comment = { fg = "foam" },
--           -- VertSplit = { fg = "muted", bg = "muted" },
--         },
--       })
--     end,
--   },
--
--   {
--     "LazyVim/LazyVim",
--     opts = { colorscheme = "rose-pine" },
--   },
--
--   {
--     "mawkler/modicator.nvim",
--     dependencies = "rose-pine/neovim",
--     init = function()
--       -- These are required for Modicator to work
--       vim.o.cursorline = false
--       vim.o.number = true
--       vim.o.termguicolors = true
--     end,
--     opts = {},
--   },
-- }
