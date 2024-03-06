local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = {
  "html",
  "cssls",
  "tsserver",
  "clangd",
  "vimls",
  "glsl_analyzer"
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- 
-- lspconfig.pyright.setup { blabla}

-- configure intelephese path
lspconfig.intelephense.setup({
  settings = {
    intelephense = {
      -- install stubs with composer on your user directory
      -- global require php-stubs/wordpress-globals php-stubs/wordpress-stubs php-stubs/wp-cli-stubs
      stubs = {
        "wordpress",
        "wordpress-globals",
        "wp-cli",
        "curl",
        "Core",
        "zip",
        "zlib"
      },
      environment = {
        includePaths = '/home/edition/.composer/vendor/php-stubs'
        -- this lines forces the composer path for the 
        -- stubs in case intelephense don't find
      },
      files = {
        maxSize = 5000000;
      };
    }
  }
});
