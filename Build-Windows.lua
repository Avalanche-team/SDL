project "SDL"
    kind "StaticLib"
    language "C"
    staticruntime "on"

    targetdir ("" .. SOLUTION_DIR .. "/bin/" .. BUILD_CONFIG)
	objdir ("" .. SOLUTION_DIR .. "/bin-int/" .. BUILD_CONFIG)

    includedirs {
        "include",
        "include/build_config",
        "src",
    }

    files {
        "include/**.h",
        "src/*.c",
        "src/atomic/*.c",
        "src/audio/*.c",
        "src/audio/directsound/*.c",
        "src/core/windows/*.c",
        "src/events/*.c",
        "src/file/*.c",
        "src/haptic/*.c",
        "src/hidapi/windows/*.c",
        "src/joystick/*.c",
        "src/joystick/windows/*.c",
        "src/loadso/windows/*.c",
        "src/render/*.c",
        "src/render/software/*.c",
        "src/stdlib/*.c",
        "src/thread/*.c",
        "src/thread/windows/*.c",
        "src/timer/*.c",
        "src/timer/windows/*.c",
        "src/video/*.c",
        "src/video/windows/*.c",
        "src/video/dummy/*.c",
        "src/main/windows/*.c" -- if building SDL_main
    }

    filter "system:windows"
        systemversion "latest"
        defines { "_WINDOWS", "SDL_STATIC" }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"