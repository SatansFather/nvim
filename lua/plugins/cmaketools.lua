return
{
	"Civitasv/cmake-tools.nvim",
	--commit = "1ee065c33ca777c0e03cd7c358010202ee70bb88",
	opts =
	{
		cmake_generate_options = { '-G Ninja' },
		cmake_build_directory = function()
			return "build/${variant:buildType}"
		end,
		cmake_executor =
		{
			opts =
			{
				auto_close_when_success = true
			}
		}
	}
}

