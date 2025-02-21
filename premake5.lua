project "libkissfft"
    kind "StaticLib"
		cppdialect "C++17"
    language "C++"

    targetdir ("../bin/" .. outputdir .. "/%{prj.name}")
    objdir ("../bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
			"kiss_fft.c",
			"kfc.c",
			"kiss_fftnd.c",
			"kiss_fftndr.c",
			"kiss_fftr.c"
    }

    filter "system:windows"
			systemversion "latest"

    filter "configurations:Debug"
      runtime "Debug"
      symbols "on"
			staticruntime "off"

    filter "configurations:Release"
      runtime "Release"
      optimize "on"
			staticruntime "On"
