--type conform.options
local options = {
	lsp_fallback = true,

	formatters_by_ft = {
		lua = { "stylua" },
    typescript = { "prettier" },
		javascript = { "prettier" },
		css = { "prettier" },
    scss = { "prettier" },
		html = { "prettier" },
		sh = { "shfmt" },
    md = { "markdownlint" },
    php = { "php_cs_fixer" },
    frag = { "glsl_analyzer" },
    vert = { "glsl_analyser" },
    geom = { "glsl_analyser" }
	},

  -- adding same formatter for multiple filetypes can look too much work for some
  -- instead of the above code you could just use a loop! the config is just a table after all!

	-- format_on_save = {
	--   -- These options will be passed to conform.format()
	--   timeout_ms = 500,
	--   lsp_fallback = true,
	-- },
}

require("conform").setup(options)
