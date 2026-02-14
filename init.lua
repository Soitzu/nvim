-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- VS Code terminal helper (nur aktiv, wenn Neovim in VS Code läuft)
if vim.g.vscode then
  -- Funktion, die einen Befehl ins VS Code Terminal sendet
  function RunInTerminal(cmd)
    vim.fn.VSCodeCall("workbench.action.terminal.sendSequence", {
      text = cmd .. "\n",
    })
    vim.fn.VSCodeCall("workbench.action.terminal.focus")
  end

  -- Command: :S <befehl>
  vim.api.nvim_create_user_command("S", function(opts)
    RunInTerminal(opts.args)
  end, { nargs = "+" })
end
