project "assimp"

kind "SharedLib"
language "C++"
cppdialect "C++17"
staticruntime "on"

targetdir ("%{wks.location}/Tools/Binaries/%{cfg.buildcfg}_%{cfg.architecture}")
objdir ("%{wks.location}/Tools/Intermediates/%{cfg.buildcfg}_%{cfg.architecture}")

files{

    "include/..",
    "code/AssetLib/Collada/**",
    "code/AssetLib/glTF/**",
    "code/AssetLib/glTF2/**",
    "code/AssetLib/FBX/**",
    "code/AssetLib/Obj/**",
    "code/AssetLib/STEPParser/**",
    "code/CApi/**",
    "code/Common/**",
    "contrib/Clipper/**",
    "contrib/open3dgc/**",
    "contrib/openddl_parser/**",
    "contrib/Poly2Tri/**",
    "contrib/Pugixml/**",
    "contrib/unzip/**",
    "contrib/zip/src/**",
    "code/Material/**",
    "code/PostProcessing/**"


}

includedirs{
    "include",
    "%{prj.location}",
    "contrib/zlib",
    "contrib/rapidjson/include",
    "contrib",
    "contrib/pugixml/src",
    "contrib/unzip",
    "contrib/openddlparser/include",
    "code",
    "contrib/zip/src"
}

defines{
    "ASSIMP_BUILD_NO_C4D_IMPORTER",
    "ASSIMP_BUILD_NO_AMF_IMPORTER",
    "ASSIMP_BUILD_NO_3DS_IMPORTER",
    "ASSIMP_BUILD_NO_AC_IMPORTER",
    "ASSIMP_BUILD_NO_ASE_IMPORTER",
    "ASSIMP_BUILD_NO_ASSBIN_IMPORTER",
    "ASSIMP_BUILD_NO_B3D_IMPORTER",
    "ASSIMP_BUILD_NO_BVH_IMPORTER",
    "ASSIMP_BUILD_NO_DXF_IMPORTER",
    "ASSIMP_BUILD_NO_CSM_IMPORTER",
    "ASSIMP_BUILD_NO_HMP_IMPORTER",
    "ASSIMP_BUILD_NO_IRRMESH_IMPORTER",
    "ASSIMP_BUILD_NO_IRR_IMPORTER",
    "ASSIMP_BUILD_NO_LWO_IMPORTER",
    "ASSIMP_BUILD_NO_LWS_IMPORTER",
    "ASSIMP_BUILD_NO_M3D_IMPORTER",
    "ASSIMP_BUILD_NO_MD2_IMPORTER",
    "ASSIMP_BUILD_NO_MD3_IMPORTER",
    "ASSIMP_BUILD_NO_MD5_IMPORTER",
    "ASSIMP_BUILD_NO_MDC_IMPORTER",
    "ASSIMP_BUILD_NO_MDL_IMPORTER",
    "ASSIMP_BUILD_NO_NFF_IMPORTER",
    "ASSIMP_BUILD_NO_NDO_IMPORTER",
    "ASSIMP_BUILD_NO_OFF_IMPORTER",
    "ASSIMP_BUILD_NO_OGRE_IMPORTER",
    "ASSIMP_BUILD_NO_OPENGEX_IMPORTER",
    "ASSIMP_BUILD_NO_PLY_IMPORTER",
    "ASSIMP_BUILD_NO_MS3D_IMPORTER",
    "ASSIMP_BUILD_NO_COB_IMPORTER",
    "ASSIMP_BUILD_NO_BLEND_IMPORTER",
    "ASSIMP_BUILD_NO_IFC_IMPORTER",
    "ASSIMP_BUILD_NO_XGL_IMPORTER",
    "ASSIMP_BUILD_NO_OBJ_EXPORTER",
    "ASSIMP_BUILD_NO_OPENGEX_EXPORTER",
    "ASSIMP_BUILD_NO_PLY_EXPORTER",
    "ASSIMP_BUILD_NO_3DS_EXPORTER",
    "ASSIMP_BUILD_NO_ASSBIN_EXPORTER",
    "ASSIMP_BUILD_NO_ASSXML_EXPORTER",
    "ASSIMP_BUILD_NO_M3D_EXPORTER",
    "ASSIMP_BUILD_NO_COLLADA_EXPORTER",
    "ASSIMP_BUILD_NO_FBX_EXPORTER",
    "ASSIMP_BUILD_NO_STL_EXPORTER",
    "ASSIMP_BUILD_NO_X_EXPORTER",
    "ASSIMP_BUILD_NO_X3D_EXPORTER",
    "ASSIMP_BUILD_NO_GLTF_EXPORTER",
    "ASSIMP_BUILD_NO_3MF_EXPORTER",
    "ASSIMP_BUILD_NO_ASSJSON_EXPORTER",
    "ASSIMP_BUILD_NO_STEP_EXPORTER",
    "ASSIMP_BUILD_NO_Q3D_IMPORTER",
    "ASSIMP_BUILD_NO_Q3BSP_IMPORTER",
    "ASSIMP_BUILD_NO_RAW_IMPORTER",
    "ASSIMP_BUILD_NO_SIB_IMPORTER",
    "ASSIMP_BUILD_NO_SMD_IMPORTER",
    "ASSIMP_BUILD_NO_STL_IMPORTER",
    "ASSIMP_BUILD_NO_TERRAGEN_IMPORTER",
    "ASSIMP_BUILD_NO_3D_IMPORTER",
    "ASSIMP_BUILD_NO_X_IMPORTER",
    "ASSIMP_BUILD_NO_X3D_IMPORTER",
    "ASSIMP_BUILD_NO_3MF_IMPORTER",
    "ASSIMP_BUILD_NO_MMD_IMPORTER",
    "MINIZ_USE_UNALIGNED_LOADS_AND_STORES=0",
    "ASSIMP_IMPORTER",
    "_GLTF_USE_OPEN3DGC=1",
    "RAPIDJSON_HAS_STDSTRING=1",
    "RAPIDJSON_NOMEMBERITERATORCLASS",
    "ASSIMP_BUILD_DLL_EXPORT",
    "_SCL_SECURE_NO_WARNINGS",
    "_CRT_SECURE_NO_WARNINGS",
    "OPENDDLPARSER_BUILD",
}

links{
    "zlib"
}

filter "system:windows"
systemversion "latest"

filter  "configurations:Debug"
 runtime "Debug"
 symbols "on"

filter  "configurations:Release"
 runtime "Release"
 optimize "on"


project "zlib"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"

    targetdir ("%{wks.location}/Tools/Binaries/%{cfg.buildcfg}_%{cfg.architecture}")
    objdir ("%{wks.location}/Tools/Intermediates/%{cfg.buildcfg}_%{cfg.architecture}")

    includedirs{
        "include",
        "%{prj.location}",
        "code",
        "contrib/zlib"
    }

    files{
        "contrib/zlib/crc32.h",        
        "contrib/zlib/deflate.h",        
        "contrib/zlib/gzguts.h",        
        "contrib/zlib/inffast.h",        
        "contrib/zlib/inffixed.h",        
        "contrib/zlib/inflate.h",        
        "contrib/zlib/inftrees.h",        
        "contrib/zlib/trees.h",        
        "contrib/zlib/zconf.h",        
        "contrib/zlib/zlib.h",        
        "contrib/zlib/zutil.h",

        "contrib/zlib/adler32.c",
        "contrib/zlib/compress.c",
        "contrib/zlib/crc32.c",
        "contrib/zlib/deflate.c",
        "contrib/zlib/gzclose.c",
        "contrib/zlib/gzread.c",
        "contrib/zlib/gzwrite.c",
        "contrib/zlib/infback.c",
        "contrib/zlib/inffast.c",
        "contrib/zlib/inflate.c",
        "contrib/zlib/inftrees.c",
        "contrib/zlib/trees.c",
        "contrib/zlib/uncompr.c",
        "contrib/zlib/zutil.c"
    }

    defines{
        "NO_FSEEKO",
        "_CRT_SECURE_NO_DEPRECATE",
        "_CRT_NONSTDC_NO_DEPRECATE",
    }
