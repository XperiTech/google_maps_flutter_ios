#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'google_maps_flutter_ios'
  s.version          = '0.0.1'
  s.summary          = 'Google Maps for Flutter'
  s.description      = <<-DESC
A Flutter plugin that provides a Google Maps widget.
Downloaded by pub (not CocoaPods).
                       DESC
  s.homepage         = 'https://github.com/flutter/plugins'
  s.license          = { :type => 'BSD', :file => '../LICENSE' }
  s.author           = { 'Flutter Dev Team' => 'flutter-dev@googlegroups.com' }
  s.source           = { :http => 'https://github.com/flutter/plugins/tree/main/packages/google_maps_flutter/google_maps_flutter/ios' }
  s.documentation_url = 'https://pub.dev/packages/google_maps_flutter_ios'
  s.source_files = 'Classes/**/*.{h,m}', 'Carthage/**/*.{h,m,swift}'
  s.public_header_files = 'Classes/**/*.h'
  s.module_map = 'Classes/google_maps_flutter_ios.modulemap'
  s.dependency 'Flutter'
  s.static_framework = true
  s.platform = :ios, '13.0'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }

#   s.dependency 'GoogleMaps', '~> 7.0.0'
  s.vendored_frameworks = 'Carthage/Build/GoogleMaps.xcframework', 'Carthage/Build/GoogleMapsBase.xcframework' , 'Carthage/Build/GoogleMapsCore.xcframework'
#   s.resource_bundle = 'Carthage/Build/GoogleMapsBase.xcframework/ios-arm64/GoogleMaps.framework/Resources/GoogleMaps.bundle'
  s.resources = 'Carthage/Build/GoogleMaps.xcframework/ios-arm64_x86_64-simulator/GoogleMaps.framework/Resources/GoogleMaps.bundle'
  s.preserve_path = 'Carthage/Build/*'
  s.libraries = 'z', 'c++'
  s.frameworks = 'Accelerate', 'CoreData', 'CoreGraphics', 'CoreImage', 'CoreLocation', 'CoreTelephony', 'CoreText', 'GLKit', 'ImageIO', 'Metal', 'OpenGLES', 'QuartzCore', 'SystemConfiguration', 'UIKit'
end