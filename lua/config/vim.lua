vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.mousemoveevent = true
vim.diagnostic.config({ virtual_text = false })

local signs = { Error = "", Warn = "", Hint = "", Info = "" }

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
