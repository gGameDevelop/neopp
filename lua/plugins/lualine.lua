return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			globalstatus = true,
		},
		sections = {
			lualine_a = {
				function()
					local mode = vim.fn.mode()
					local mode_names = {
						n = "NORMAL",
						i = "INSERT",
						v = "VISUAL",
						V = "V-LINE",
						[""] = "V-BLOCK",
						c = "COMMAND",
						s = "SELECT",
						S = "S-LINE",
						[""] = "S-BLOCK",
						t = "TERMINAL",
						r = "REPLACE",
						R = "V-REPLACE",
					}
					return " " .. (mode_names[mode] or mode) -- Get mode name or default to mode character
				end,
			},
			lualine_c = {
				{
					"filename",
					symbols = {
						modified = "*", -- Change the modified symbol to '*'
						readonly = "", -- No symbol for read-only files
						unnamed = "[No Name]", -- Display for unnamed buffers
					},
					path = 0, -- 1: Relative path, 0: Basename, 2: Absolute path
				},
			},
			lualine_x = { "filetype" },
			lualine_y = {
				function()
					local clients = vim.lsp.get_active_clients()
					if next(clients) == nil then
						return "No LSP"
					else
						local attached_clients = {}
						for _, client in pairs(clients) do
							-- Exclude null-ls from the list
							if client.name ~= "null-ls" then
								table.insert(attached_clients, client.name)
							end
						end
						if #attached_clients == 0 then
							return "No LSP"
						else
							return "LSP: " .. table.concat(attached_clients, ", ")
						end
					end
				end,
			},
		},
	},
}
