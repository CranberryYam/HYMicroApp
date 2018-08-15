#
# Be sure to run `pod lib lint HYMicroApp.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HYMicroApp'
  s.version          = '0.1.0'
  s.summary          = 'MicroApp, which is for Hybrid App.'

  s.homepage         = 'https://github.com/CranberryYam/HYMicroApp'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'CranberryYam' => '1113145615yihl@gmail.com' }
  s.source           = { :git => 'https://github.com/CranberryYam/HYMicroApp.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'HYMicroApp/Classes/**/*'
  
  s.resource_bundles = {
      'HYMicroApp' => ['HYMicroApp/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit' 
  s.dependency 'VasSonic', '3.0.0'
end
