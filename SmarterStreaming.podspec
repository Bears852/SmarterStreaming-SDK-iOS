#
#  Be sure to run `pod spec lint SmarterStreaming.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "SmarterStreaming"
  spec.summary      = "大牛直播移动端SDK"
  spec.homepage     = "https://github.com/daniulive/SmarterStreaming"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = "daniulive"
  spec.version      = "2019.06.27"
  spec.platform     = :ios
  spec.ios.deployment_target = "8.0"

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  spec.source       = { :git => "https://github.com/wbcyclist/SmarterStreaming-SDK-iOS.git", :tag => "#{spec.version}" }
  spec.requires_arc = true
  spec.xcconfig = { "ENABLE_BITCODE" => "NO" }
  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

  spec.default_subspec = 'common'

  spec.subspec 'common' do |common|
    common.source_files = "SmarterStreaming/Headers/nt_common_media_define.h", "SmarterStreaming/Headers/nt_event_define.h"
    common.frameworks = "Accelerate", "AssetsLibrary", "AudioToolbox", "AVFoundation", "CoreMedia", "Foundation", "UIKit", "VideoToolbox"
    common.libraries = "bz2", "c++", "iconv", "z"
  end

  spec.subspec 'Player' do |player|
    player.script_phase = { :name => 'UNZIP SmarterStreaming SDK', :script => 'cd ${PODS_ROOT}/SmarterStreaming/SmarterStreaming/Frameworks; for n in "libSmartPlayerSDK.a" "libSmartPublisherSDK.a" "libSmartPublisherSDK_NO_GPUImage.a"; do if [ -f $n ] && [ ! -x $n ]; then unzip -o $n; fi; done;', :execution_position => :before_compile }
    player.frameworks = "GLKit", "OpenGLES", "QuartzCore"
    player.source_files = "SmarterStreaming/Headers/SmartPlayerSDK.h"
    player.vendored_libraries = "SmarterStreaming/Frameworks/libSmartPlayerSDK.a"
    player.dependency 'SmarterStreaming/common'
  end

  spec.subspec 'Publisher' do |publisher|
    publisher.script_phase = { :name => 'UNZIP SmarterStreaming SDK', :script => 'cd ${PODS_ROOT}/SmarterStreaming/SmarterStreaming/Frameworks; for n in "libSmartPlayerSDK.a" "libSmartPublisherSDK.a" "libSmartPublisherSDK_NO_GPUImage.a"; do if [ -f $n ] && [ ! -x $n ]; then unzip -o $n; fi; done;', :execution_position => :before_compile }
    publisher.source_files = "SmarterStreaming/Headers/SmartPublisherSDK.h", "SmarterStreaming/Headers/SmartRTSPSeverSDK.h"
    publisher.vendored_libraries = "SmarterStreaming/Frameworks/libSmartPublisherSDK.a"
    publisher.dependency 'SmarterStreaming/common'
  end
  
  spec.subspec 'Publisher_NO_GPUImage' do |publisher2|
    publisher2.script_phase = { :name => 'UNZIP SmarterStreaming SDK', :script => 'cd ${PODS_ROOT}/SmarterStreaming/SmarterStreaming/Frameworks; for n in "libSmartPlayerSDK.a" "libSmartPublisherSDK.a" "libSmartPublisherSDK_NO_GPUImage.a"; do if [ -f $n ] && [ ! -x $n ]; then unzip -o $n; fi; done;', :execution_position => :before_compile }
    publisher2.source_files = "SmarterStreaming/Headers/SmartPublisherSDK.h", "SmarterStreaming/Headers/SmartRTSPSeverSDK.h"
    publisher2.vendored_libraries = "SmarterStreaming/Frameworks/libSmartPublisherSDK_NO_GPUImage.a"
    publisher2.dependency 'SmarterStreaming/common'
  end

end