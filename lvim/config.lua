-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.builtin.treesitter.ensure_installed = {
	"python",
}
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ name = "black" },
})
vim.opt.timeoutlen = 25
-- lvim.colorscheme = "tok"
lvim.transparent_window = true
lvim.plugins = {
	"AckslD/swenv.nvim",
	"stevearc/dressing.nvim",
}
-- lvim.lsp.installer.setup.ensure_installed= {"cmake"}
require("swenv").setup({
	post_set_venv = function()
		vim.cmd("LspRestart")
	end,
})
lvim.builtin.treesitter.ensure_installed = {
	"bash",
	"c",
	"cpp",
	"javascript",
	"json",
	"lua",
	"python",
	"typescript",
	"tsx",
	"css",
	"rust",
	"java",
	"yaml",
	"cmake",
}
lvim.builtin.treesitter.highlight = {
	enable = true,
	additional_vim_regex_highlighting = false,
}
-- reload('user.plugins')
lvim.plugins = {
	{ "lunarvim/colorschemes" },
	{ "folke/tokyonight.nvim" },
	{ "JoosepAlviste/palenightfall.nvim" },
	{ "marko-cerovac/material.nvim" },
	-- {"arcticicestudio/nord-vim"}
}

lvim.colorscheme = "tokyonight"
-- lvim.colorscheme = "palenightfall"
-- require('palenightfall').setup()
--
--
--
-- lvim.plugins={
--   "JoosepAlviste/palenightfall.nvim",
--   config = function()
--    require('palenightfall').setup({
--       transparent = false,
--     })
--   end
-- }
