#
#  Be sure to run `pod spec lint WalletLibRLP.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "WalletLibRLP"
  s.version      = "1.0"
  s.summary      = "WalletLibRLP"
  s.homepage	 = "https://github.com/noonewallet/wallet-library-rlp-ios"

  s.license      = "MIT"
  s.author       = "WalletLibRLP"

  s.source       = { :git => "https://github.com/noonewallet/wallet-library-rlp-ios.git", :tag => "v#{s.version}", :submodules => true }
  s.swift_version = '5.0'

  s.source_files  = 'WalletLibRLP/*{swift}', 'WalletLibRLP/**/*{swift}'
 
  s.ios.deployment_target = "11.0"
  s.osx.deployment_target = "11.0"

end
