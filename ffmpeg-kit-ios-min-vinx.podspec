Pod::Spec.new do |s|
    s.name             = 'ffmpeg-kit-ios-min-vinx'
    s.version          = '6.0.3' 
    s.summary          = 'Minimal FFmpegKit build for iOS'
    s.description      = <<-DESC
                          Custom minimal build of FFmpegKit for iOS arm64 architecture.
                          Contains core ffmpeg libraries without external dependencies.
                         DESC
    s.homepage         = 'https://github.com/phongcoiydbg99/ffmpeg-kit'
    s.license          = { 
      :type => 'LGPL-3.0', 
      :file => 'ffmpegkit.xcframework/ios-arm64/ffmpegkit.framework/LICENSE'  
    }
    s.author           = { 'phongcoiydbg99' => 'phongcoiydbg99@gmail.com' }
  
    s.platform         = :ios
    s.ios.deployment_target = '12.1' 
    s.requires_arc     = true
  
    s.source           = { 
      :git => 'https://github.com/phongcoiydbg99/ffmpeg-kit.git', 
      :tag => s.version.to_s 
    }
  
    s.frameworks = 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'VideoToolbox'
    s.libraries = 'z', 'bz2', 'c++', 'iconv'

    s.vendored_frameworks = [
      'ffmpegkit.xcframework',
      'libavcodec.xcframework',
      'libavdevice.xcframework',
      'libavfilter.xcframework',
      'libavformat.xcframework',
      'libavutil.xcframework',
      'libswresample.xcframework',
      'libswscale.xcframework',
    ]
  end