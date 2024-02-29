project "yaml-cpp"
	kind "StaticLib"
	language "C++"
	cppdialect "C++latest"
	staticruntime "Off"

	files
	{
		"src/**.h",
		"src/**.cpp",
		
		"include/**.h"
	}

	includedirs
	{
		"include"
	}

	defines "YAML_CPP_STATIC_DEFINE"

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"

	filter "configurations:Shipping"
		runtime "Release"
		optimize "On"
		symbols "Off"
