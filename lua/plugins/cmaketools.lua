return
{
	"Civitasv/cmake-tools.nvim",
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

