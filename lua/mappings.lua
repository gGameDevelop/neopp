local M = {}

function M.setup()
	vim.keymap.set("n", "<leader>r", "<cmd>set relativenumber!<CR>", { desc = "Toggle relative numbers" })
	vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })

	vim.keymap.set(
		"n",
		"<leader>ff",
		"<cmd>lua require('telescope.builtin').find_files()<CR>",
		{ desc = "Telescope find files" }
	)
	vim.keymap.set(
		"n",
		"<leader>fg",
		"<cmd>lua require('telescope.builtin').live_grep()<CR>",
		{ desc = "Telescope live grep" }
	)
	vim.keymap.set(
		"n",
		"<leader>fb",
		"<cmd>lua require('telescope.builtin').buffers()<CR>",
		{ desc = "Telescope buffers" }
	)
	vim.keymap.set(
		"n",
		"<leader>fh",
		"<cmd>lua require('telescope.builtin').help_tags()<CR>",
		{ desc = "Telescope help tags" }
	)
	vim.keymap.set(
		"n",
		"<leader>fo",
		"<cmd>lua require('telescope.builtin').oldfiles()<CR>",
		{ desc = "Telescope oldfiles" }
	)
	vim.keymap.set(
		"n",
		"<leader>fm",
		"<cmd>lua require('telescope.builtin').marks()<CR>",
		{ desc = "Telescope marks" }
	)
	vim.keymap.set(
		"n",
		"<leader>nf",
		"<cmd>enew<CR>",
		{ desc = "New file" }
	)
	vim.keymap.set(
		"n",
		"<leader>ls",
		"<cmd>SessionLoad<CR>",
		{ desc = "Load session" }
	)

	vim.keymap.set(
		"n",
		"<leader>tp",
		'<cmd>lua require("theme-picker").open_theme_picker()<CR>',
		{ desc = "Toggle switsh theme picker" }
	)

	vim.api.nvim_set_keymap("n", "<Leader>h", "<cmd>BufferLineCyclePrev<CR>", { desc = "BufferLineCyclePrev" })
	vim.api.nvim_set_keymap("n", "<Leader>l", "<cmd>BufferLineCycleNext<CR>", { desc = "BufferLineCycleNext" })

	vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, { desc = "LSP buffer Hover" })

	vim.keymap.set({ "n", "i" }, "<C-s>", "<cmd>w<CR>")
	vim.keymap.set({ "n", "i" }, "<C-z>", "<cmd>undo<CR>")
	vim.keymap.set({ "n", "i" }, "<C-y>", "<cmd>redo<CR>")

	vim.keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Add debugger breakpoint at line" })
	vim.keymap.set("n", "<leader>dr", "<cmd>DapContinue<CR>", { desc = "Start or continue the debugger" })

	vim.keymap.set("n", "<leader>cg", "<cmd>CMakeGenerate<CR>", { desc = "CMake Generate" })
	vim.keymap.set("n", "<leader>cs", "<cmd>CMakeSettings<CR>", { desc = "CMake Settings" })
	vim.keymap.set("n", "<leader>cb", "<cmd>CMakeBuild<CR>", { desc = "CMake Build" })
	vim.keymap.set("n", "<leader>cr", "<cmd>CMakeRun<CR>", { desc = "CMake Run" })
	vim.keymap.set("n", "<leader>cd", "<cmd>CMakeDebug<CR>", { desc = "CMake Debug" })

	vim.keymap.set("n", "0", "<cmd>lua ToggleGotoStart()<CR>", { noremap = true, silent = true })
	vim.keymap.set({ "n", "i" }, "<Home>", "<cmd>lua ToggleGotoStart()<CR>", { noremap = true, silent = true })

	function ToggleGotoStart()
		local current_line = vim.api.nvim_get_current_line() -- Get the current line
		local first_non_blank = string.find(current_line, "%S") -- Find the index of the first non-blank character

		if first_non_blank then
			local cursor_pos = vim.api.nvim_win_get_cursor(0)[2] + 1 -- Get current cursor position (1-indexed)

			if cursor_pos == first_non_blank then
				-- Cursor is at the first non-blank character; move to the absolute start of the line
				vim.cmd("normal! 0") -- Move to the absolute beginning of the line
			else
				-- Move to the first non-blank character
				vim.cmd("normal! ^") -- Move to the first non-blank character
			end
		else
			-- If the line is empty, just move to the start
			vim.cmd("normal! 0")
		end
	end
end

return M
