function get_cmake_build_command()
	local f = io.open("CMakePresets.json", "r")
	if f then
		f:close()
		return '<cmd>CMakeSelectBuildPreset<CR>'
	else
		return '<cmd>CMakeSelectBuildType<CR>'
	end
end
