return {
	"akinsho/bufferline.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {
		options = {
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					highlight = "Directory",
					text_align = "center",
					padding = 1,
				},
			},
			diagnostics = "nvim_lsp",
		},
		highlights = {
			buffer_selected = {
				italic = false,
			},
			buffer_visible = {
				italic = false,
			},
		},
	},
}
