return {
	"rebelot/kanagawa.nvim",
	config = function()
		require("kanagawa").setup({
			compile = true,
			transparent = true,
			keywordStyle = { italic = false },
		})
		vim.cmd("colorscheme kanagawa")
	end,
	build = function()
		vim.cmd(":KanagawaCompile")
	end,
}
