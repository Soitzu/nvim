return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      direction = "float",
      float_opts = {
        border = "rounded",
      },
    })

    vim.keymap.set("n", "<leader>gg", function()
      vim.cmd("ToggleTerm direction=float lazygit")
    end, { desc = "Lazygit (float)" })
  end,
}
