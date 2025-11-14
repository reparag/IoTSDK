Pod::Spec.new do |s|
  s.name             = "IoTSDK"
  s.version          = "2.0.0"
  s.summary          = "An iOS Swift library for IoT device management"
  s.description      = <<-DESC
    IoTSDK is an iOS library that helps you connect, read, and manage IoT devices easily.
  DESC
  s.homepage         = "https://github.com/reparag/IoTSDK"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Parag Patil" => "youremail@example.com" }
  s.source           = { :git => "https://github.com/reparag/IoTSDK.git", :tag => s.version.to_s }
  s.platform         = :ios, "15.0"
  s.swift_version    = "6.1"

  # Source files
  s.source_files     = "Sources/IoTSDK/**/*.swift"

  # Include DocC documentation (optional)
  s.resources       = "Sources/IoTSDK/IoTSDK.docc/**/*"
  
  # Optional: Include prebuilt XCFramework if you have it
  # s.vendored_frameworks = "IoT.xcframework"

  # Optional: Disable code signing for prebuilt SDK (needed for XCFramework)
  # s.pod_target_xcconfig = {
  #   'CODE_SIGNING_ALLOWED' => 'NO',
  #   'EXPANDED_CODE_SIGN_IDENTITY' => ''
  # }
  # s.user_target_xcconfig = {
  #   'CODE_SIGNING_ALLOWED' => 'NO',
  #   'EXPANDED_CODE_SIGN_IDENTITY' => ''
  # }
end
