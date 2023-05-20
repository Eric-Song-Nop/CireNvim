local M = {}

local color = { "catppuccin/nvim", name = "catppuccin" }
color.name =  "catppuccin"

function color.config()
    require("catppuccin").setup({
        flavour = "mocha",
        background = { -- :h background
            light = "latte",
            dark = "mocha",
        },
        transparent_background = (vim.g.neovide ~= nil)
    })
  local status_ok, _ = pcall(vim.cmd.colorscheme, color.name)
  if not status_ok then
    return
  end
end

table.insert(M, color)

return M
