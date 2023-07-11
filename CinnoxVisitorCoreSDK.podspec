#
#  Be sure to run `pod spec lint CinnoxVisitorCore.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "CinnoxVisitorCore"
  spec.version      = "1.0.0"
  spec.summary      = "CinnoxVisitorCoreSDK is a framework for demo."
  spec.description  = <<-DESC
                    This is a demo framework for, do not use it!
                   DESC

  spec.homepage     = "https://github.com/sky0926a/framework"

  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author       = { 'M800 Limited' => 'support@m800.com' }

  spec.platform     = :ios, "14.0"
  spec.swift_version = '5.0'

  spec.source       = { :git => "https://github.com/sky0926a/framework.git", :tag => "#{spec.version}" }
  spec.ios.vendored_frameworks = 'CinnoxVisitorCoreSDK.xcframework'
  
  # Dependencies
    spec.dependency 'LiveConnectUIKit_iOS', '3.12.0.76'
    spec.dependency 'Zip', '~> 2.1.2'
    spec.dependency 'Cache', '5.2.0'
    spec.dependency 'Kingfisher', '~> 7.6.2'
    spec.dependency 'SQLCipher', '4.5.1'
  
  # Project settings
  spec.user_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }
  spec.pod_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }


end
