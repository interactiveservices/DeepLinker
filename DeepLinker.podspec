#
# Be sure to run `pod lib lint DeepLinker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DeepLinker'
  s.version          = '0.1.0'
  s.summary          = 'DeepLinker provides convenient API to access phone, skype, maps, etc...'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
DeepLinker provides convenient API to access
1) Phone calls
2) Skype app
3) Maps(yandex, google, apple)
4) Opening links in SafariViewController
                       DESC

  s.homepage         = 'https://github.com/interactiveservices/DeepLinker'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'alexshubin22@gmail.com' => 'a.shubin@be-interactive.ru' }
  s.source           = { :git => 'https://github.com/interactiveservices/DeepLinker.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'DeepLinker/Classes/**/*'
  
  # s.resource_bundles = {
  #   'DeepLinker' => ['DeepLinker/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
