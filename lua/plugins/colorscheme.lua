-- ~/.config/nvim/lua/plugins/colorscheme.lua
return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false, -- wichtig: sofort laden
    priority = 1000, -- vor anderen Plugins laden
    config = function()
      require("cyberdream").setup({
        -- optional: eigene Settings
        transparent = false,
        italic_comments = true,
      })
      vim.cmd("colorscheme cyberdream")
    end,
  },
}
