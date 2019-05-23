

Pod::Spec.new do |spec|
  spec.name         = "TFY_AutoLayout"
  spec.version      = "2.0.0"
  spec.summary      = "布局工具"
  spec.description  = "布局"

  spec.homepage     = "https://github.com/13662049573/TFY_AutoLayout"

  spec.license      = "MIT"


  spec.author             = { "tianfengyou" => "420144542@qq.com" }


  spec.ios.frameworks    = "Foundation","UIKit"
  spec.tvos.frameworks   = "Foundation", "UIKit"
  spec.osx.frameworks    = "Foundation", "AppKit"

  spec.ios.deployment_target = "10.0" 
  spec.osx.deployment_target = "10.7" 
  spec.tvos.deployment_target = "9.0" 

  spec.source       = { :git => "https://github.com/13662049573/TFY_AutoLayout.git", :tag => spec.version}


  spec.source_files  = "TFY_AutoLayout/TFY_AutoLayout/**/*.{h,m}"
  
  spec.xcconfig      = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include" }
  
  spec.requires_arc = true

end
