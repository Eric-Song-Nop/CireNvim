local M = {}

local tree = { "nvim-tree/nvim-tree.lua" }
tree.dependencies = {"nvim-tree/nvim-web-devicons"}
tree.config = function ()
require("nvim-tree").setup({
    sync_root_with_cwd = true,
})
end
table.insert(M, tree)

return M
