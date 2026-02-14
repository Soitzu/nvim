return {
  "andweeb/presence.nvim",
  event = "VeryLazy",
  config = function()
    require("presence"):setup({
      -- Optional: Hier kannst du Einstellungen anpassen
      auto_update = true,
      neovim_image_text = "The One True Text Editor",
      main_image = "neovim", -- oder "file"
      debounce_timeout = 2,
      enable_line_number = true,
    })
  end,
}
