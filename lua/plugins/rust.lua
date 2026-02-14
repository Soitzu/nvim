return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              allFeatures = true,
              loadOutDirsFromCheck = true,
            },
            checkOnSave = {
              command = "cargo",
              extraArgs = { "--manifest-path", "backend/Cargo.toml" },
            },
          },
        },
      },
    },
  },
}
