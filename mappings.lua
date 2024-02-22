---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
    ["<leader>ao"] = {
      function()
        require("aerial").open()
      end,
      "open symbols",
    },
    ["<leader>ac"] = {
      function()
        require("aerial").close()
      end,
      "close symbols"
    },
    ["<C-w>"] = { "<cmd> bd <CR>", "close file" },
    ["<leader>gg"] = { "<cmd> !golines . -w <CR>", "run golines" },
    ["<leader>rm"] = { ":call delete(expand('%')) | bdelete!", "delete the current file"},
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
