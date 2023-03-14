#!lua

project "pugixml"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    targetdir "bin/pugixml/%{cfg.buildcfg}"
    objdir "intermediates/pugixml/%{cfg.buildcfg}"

    files
    {
        "src/**.h",
        "src/**.cpp"
    }
    
    includedirs
    {
        "include"
    }
