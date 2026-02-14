return {
  "xiyaowong/transparent.nvim",
  opts = {
    extra_groups = {
      "NormalFloat", -- Floating windows
      "NvimTreeNormal", -- Falls du nvim-tree nutzt
      "NeoTreeNormal", -- Neo-tree normal window
      "NeoTreeNormalNC", -- Neo-tree inactive window
      "NeoTreeFloatBorder",
      "NeoTreeEndOfBuffer",
    },
    exclude_groups = {},
  },
  config = function(_, opts)
    require("transparent").setup(opts)
    vim.cmd("TransparentEnable")
  end,
}
