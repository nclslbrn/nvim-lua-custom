---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  nvdash = {
    header = {
      "        ███████████        ",
      "           █████           ",
      "      ███████████████      ",
      "   █████   █████   █████   ",
      " █████     █████     █████ ",
      "█████      █████      █████",
      "█████      █████      █████",
      "█████      █████      █████",
      "█████      █████      █████",
      " █████     █████     █████ ",
      "   █████   █████   █████   ",
      "     █████████████████     ",
      "           █████           ",
      "        ███████████        ",
    },
  },
  theme = "everforest",
  theme_toggle = { "everforest", "one_light" },
  telescope = { style = "bordered" },
  hl_override = highlights.override,
  hl_add = highlights.add,
  statusline = {
    theme = "vscode_colored",
  },
  tabufline = {
    overriden_modules = function (modules)
      table.remove(modules, 4)
    end
  }

}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
