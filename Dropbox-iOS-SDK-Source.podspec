Pod::Spec.new do |s|
  s.name = 'Dropbox-iOS-SDK-Source'
  s.version = '1.3.13'
  s.license = { :type => 'Copyright', :file => 'LICENSE' }
  s.summary = 'The Dropbox iOS SDK, built from source'
  s.homepage = 'https://www.dropbox.com/developers/core/sdks/ios'
  s.authors = 'Dropbox'
  s.source = { :git => 'https://github.com/dropbox-sdk-mirror/dropbox-sdk-ios.git', :tag => s.version }

  s.ios.deployment_target = '5.0'

  s.source_files = 'DropboxSDK/Classes/*.m', 'DropboxSDK/Classes/{DropboxSDK,MPOAuth}/*.{h,m}', 'DropboxSDK/Classes/MPOAuth/Crypto/*.c', 'DropboxSDK/Classes/JSON/*.m'

  s.exclude_files = 'DropboxSDK/Classes/DropboxSDK/MPOAuth.h'
  s.ios.exclude_files = 'DropboxSDK/Classes/*OSX.m'
  s.osx.exclude_files = 'DropboxSDK/Classes/*iOS.m'

  s.requires_arc = false
end
