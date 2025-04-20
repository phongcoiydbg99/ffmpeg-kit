Pod::Spec.new do |s|
    s.name             = 'ffmpeg-kit-ios-min'
    s.version          = '6.0.0' 
    s.summary          = 'Minimal FFmpegKit build for iOS'
    s.description      = <<-DESC
                          Custom minimal build of FFmpegKit for iOS arm64 architecture.
                          Contains core ffmpeg libraries without external dependencies.
                         DESC
    s.homepage         = 'https://github.com/phongcoiydbg99/ffmpeg-kit'
    s.license          = { 
      :type => 'LGPL-3.0', 
      :file => 'ffmpeg-kit-ios-min/ffmpegkit.xcframework/LICENSE'  
    }
    s.author           = { 'phongcoiydbg99' => 'phongcoiydbg99@gmail.com' }
  
    s.platform         = :ios
    s.ios.deployment_target = '12.1' 
    s.requires_arc     = true
    s.module_name = 'FFmpegKit'
  
    s.source           = { 
      :git => 'https://github.com/phongcoiydbg99/ffmpeg-kit.git', 
      :tag => s.version.to_s 
    }
  
    s.vendored_frameworks = [
      'ffmpeg-kit-ios-min/ffmpegkit.xcframework',
      'ffmpeg-kit-ios-min/libavcodec.xcframework',
      'ffmpeg-kit-ios-min/libavdevice.xcframework',
      'ffmpeg-kit-ios-min/libavfilter.xcframework',
      'ffmpeg-kit-ios-min/libavformat.xcframework',
      'ffmpeg-kit-ios-min/libavutil.xcframework',
      'ffmpeg-kit-ios-min/libswresample.xcframework',
      'ffmpeg-kit-ios-min/libswscale.xcframework',
    ]
  end