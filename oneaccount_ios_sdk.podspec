
Pod::Spec.new do |s|
  s.name             = 'oneaccount_ios_sdk'
  s.version          = '1.0.0'
  s.summary          = 'One account client library for integration'

  s.description      = <<-DESC
This library helps to interact with One account application for iOS
                       DESC

  s.homepage         = 'https://github.com/tularovbeslan/oneaccount_ios_sdk'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tularovbeslan' => 'tularovbeslan@gmail.com' }
  s.source           = { :git => 'https://github.com/tularovbeslan/oneaccount_ios_sdk.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/JiromTomson'
  s.swift_version = '4.2'
  s.ios.deployment_target = '10.0'

  s.source_files = 'oneaccount_ios_sdk/Classes/**/*'
  
end
