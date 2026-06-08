return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			--go through and set these up?
			lua = { "stylua" },
			-- Conform will run multiple formatters sequentially
			python = { "isort", "black" },
			-- You can customize some of the format options for the filetype (:help conform.format)
			rust = { "rustfmt", lsp_format = "fallback" },
			-- Conform will run the first available formatter
			javascript = { "prettierd", "prettier", stop_after_first = true },
			php = { "php-cs-fixer", stop_after_first = true },
			c = { "clang_format" },
			tex = { "latexindent", lsp_format = "fallback" },
		},
		formatters = {
			["php-cs-fixer"] = {
				command = "php-cs-fixer",
				args = {
					"fix",
					"--rules=@PSR12", -- Formatting preset. Other presets are available, see the php-cs-fixer docs.
					"$FILENAME",
				},
				stdin = false,
			},
		},
		format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
