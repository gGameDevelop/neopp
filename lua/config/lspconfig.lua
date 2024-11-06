local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.lua_ls.setup({
	on_attach = function(client, bufnr)
		vim.keymap.set("n", "<C-f>", vim.lsp.buf.format)
		vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help)
		vim.keymap.set("n", "<C-h>", vim.lsp.buf.hover)
	end,
	capabilities = capabilities,
	settings = {
		Lua = {
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
				},
			},
		},
	},
})
lspconfig.clangd.setup({
	on_attach = function(client, bufnr)
		vim.keymap.set("n", "<C-f>", vim.lsp.buf.format)
		vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help)
		vim.keymap.set("n", "<C-h>", vim.lsp.buf.hover)
	end,
	capabilities = capabilities,
})
lspconfig.cmake.setup({
	on_attach = function(client, bufnr)
		vim.keymap.set("n", "<C-f>", vim.lsp.buf.format)
		vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help)
		vim.keymap.set("n", "<C-h>", vim.lsp.buf.hover)
	end,
	flags = {
		debounce_text_changes = 150,
	},
	settings = {
		cmake = {
			configureOnOpen = true,
			completion = true,
		},
	},
})
