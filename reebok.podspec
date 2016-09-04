#
# Be sure to run `pod lib lint reebok.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'reebok'
  s.version          = '0.1.1'
  s.summary          = 'This is reebok.'


  s.description      = 'rebook is also a big brand'

  s.homepage         = 'https://github.com/pankajverma232/reebok'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'pankaj verma' => 'pankaj.verma@timesinternet.in' }
  s.source           = { :git => 'https://github.com/pankajverma232/reebok.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'reebok/Classes/**/*'
  
  # s.resource_bundles = {
  #   'reebok' => ['reebok/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
