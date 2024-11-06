return {
	"HakonHarnes/img-clip.nvim",
	event = "VeryLazy",
	config = function()
		require("img-clip").setup()
	end,
}
