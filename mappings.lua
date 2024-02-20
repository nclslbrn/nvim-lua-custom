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
      "symbol",
    },
    ["<leader>ac"] = {
      function()
        require("aerial").close()
      end,
      "symbol"
    }
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
