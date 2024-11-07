local function is_nvim_tree_open()
	local bufnr = vim.api.nvim_get_current_buf()
	local bufname = vim.api.nvim_buf_get_name(bufnr)
	return bufname == "NvimTree"
end

return {
	"akinsho/toggleterm.nvim",
	opts = {
		size = 20,
		open_mapping = [[<A-t>]],
		hide_numbers = true,
		shade_filetypes = {},
		shade_terminals = true,
		shading_factor = 2,
		start_in_insert = true,
		insert_mappings = true,
		persist_size = true,
		direction = "float",
		close_on_exit = true,
		shell = vim.o.shell,
		float_opts = {
			border = "curved",
			winblend = 0,
			highlights = {
				border = "Normal",
				background = "Normal",
			},
		},
		on_open = function(term)
			if is_nvim_tree_open() then
				-- Adjust size when NvimTree is open
				vim.cmd("resize 20")
			else
				-- Default size for the terminal
				vim.cmd("resize 30")
			end
		end,
	},
}
