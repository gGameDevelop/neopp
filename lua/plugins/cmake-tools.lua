return {
	"Civitasv/cmake-tools.nvim",
	opts = {
		cmake_command = "cmake", -- this is used to specify cmake command path
		ctest_command = "ctest", -- this is used to specify ctest command path
		cmake_use_preset = true,
		cmake_regenerate_on_save = true,
	}
}
