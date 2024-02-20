local options = {
  backends = { "treesitter", "lsp", "markdown", "man" },
  close_on_select = true,
  on_attach = function(bufnr)
     -- Jump forwards/backwards with '{' and '}'
    vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
    vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
  end,
}

require("aerial").setup(options)
