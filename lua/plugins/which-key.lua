return {
	"folke/which-key.nvim",
	config = function()
		triggers = {
			{ "<auto>", mode = "nixsotc" },
			{ "a", mode = { "n", "v" } },
		}
	end,
}
