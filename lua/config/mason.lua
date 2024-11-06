local mason = require("mason-tool-installer")
mason.setup({
	ensure_installed = {
		"lua_ls",
		"stylua",
		"clangd",
		"codelldb",
		"cmake-language-server",
		"cmakelint"
	},
})
