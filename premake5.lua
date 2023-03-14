#!lua

workspace "pugixml"
    startproject "Runtime"
    architecture "x64"
    staticruntime "off"

    configurations
    {
        "Debug",
        "Release",
        "Dist"
    }
    
    filter "configurations:Debug"
        optimize "off"
        symbols "on"

    filter "configurations:Release"
        optimize "on"
        symbols "on"

    filter "configurations:Dist"
        optimize "on"
        symbols "off"

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
