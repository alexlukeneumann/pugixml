#!lua

project "pugixml"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    targetdir "bin/%{cfg.buildcfg}"
    objdir "intermediates/%{cfg.buildcfg}"

    files
    {
        "src/**.cpp"
    }

    includedirs
    {
        "include/pugixml"
    }
