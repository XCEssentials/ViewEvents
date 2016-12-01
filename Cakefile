# https://github.com/jcampbell05/xcake
# http://www.rubydoc.info/github/jcampbell05/xcake/master/file/docs/Cakefile.md

iOSdeploymentTarget = "8.0"
currentSwiftVersion = "3.0.1"
companyIdentifier = "khatskevich.maxim"
developmentTeamId = "UJA88X59XP" # Personal team

#===

project.name = "MKHViewEvents"
project.class_prefix = "VEV"
project.organization = "Maxim Khatskevich"

#=== DEFAULT target settings

project.all_configurations.each do |configuration|

    # for all configurations

    configuration.settings["SDKROOT"] = "iphoneos"
    configuration.settings["DEBUG_INFORMATION_FORMAT"] = "dwarf"
    configuration.settings["CODE_SIGN_IDENTITY[sdk=iphoneos*]"] = ""
    configuration.settings["TARGETED_DEVICE_FAMILY"] = "1,2"
    configuration.settings["IPHONEOS_DEPLOYMENT_TARGET"] = iOSdeploymentTarget
    configuration.settings["VERSIONING_SYSTEM"] = "apple-generic"

    configuration.settings["GCC_NO_COMMON_BLOCKS"] = "YES"
    configuration.settings["GCC_WARN_ABOUT_RETURN_TYPE"] = "YES_ERROR"
    configuration.settings["GCC_WARN_UNINITIALIZED_AUTOS"] = "YES_AGGRESSIVE"
    configuration.settings["CLANG_WARN_DIRECT_OBJC_ISA_USAGE"] = "YES_ERROR"
    configuration.settings["CLANG_WARN_OBJC_ROOT_CLASS"] = "YES_ERROR"

    configuration.settings["SWIFT_OPTIMIZATION_LEVEL"] = "-Onone"

    configuration.settings["CURRENT_PROJECT_VERSION"] = "1" # just default non-empty value

    configuration.settings["CLANG_WARN_INFINITE_RECURSION"] = "YES" # Xcode 8
    configuration.settings["CLANG_WARN_SUSPICIOUS_MOVE"] = "YES" # Xcode 8
    configuration.settings["ENABLE_STRICT_OBJC_MSGSEND"] = "YES" # Xcode 8

    #===

    if configuration.name == "Release"

        configuration.settings["DEBUG_INFORMATION_FORMAT"] = "dwarf-with-dsym"
        configuration.settings["SWIFT_OPTIMIZATION_LEVEL"] = "-Owholemodule" # Xcode 8

    end

end

#=== TARGETS

target do |target|

    target.name = project.name
    target.type = :framework
    target.language = :swift
    target.platform = :ios
    target.deployment_target = iOSdeploymentTarget

    #=== CUSTOM settings for the target

    target.all_configurations.each do |configuration|

        #=== Build Settings - Core

        configuration.product_bundle_identifier = companyIdentifier + "." + target.name

        configuration.settings["INFOPLIST_FILE"] = "Info/" + target.name + ".plist"

        configuration.settings["PRODUCT_NAME"] = "$(TARGET_NAME)"

        # Xcode 8 automati c signing support
        configuration.settings["CODE_SIGN_IDENTITY[sdk=iphoneos*]"] = ""
        configuration.settings["DEVELOPMENT_TEAM"] = developmentTeamId

        configuration.settings["SWIFT_VERSION"] = currentSwiftVersion # Xcode 8

    end

    #=== Source Files

    target.include_files = ["Src/**/*.*"]
    target.include_files << "Src-Extra/**/*.*"

end
