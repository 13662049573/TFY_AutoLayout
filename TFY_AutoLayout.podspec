

Pod::Spec.new do |spec|
  spec.name         = "TFY_AutoLayout"

  spec.version      = "2.4.8"

  spec.summary      = "简介高效，链式点语法布局工具"

  spec.description  = "简介高效，链式点语法布局工具"

  spec.homepage     = "https://github.com/13662049573/TFY_AutoLayout"

  spec.license      = "MIT"

  spec.author       = { "tianfengyou" => "420144542@qq.com" }

  spec.platform     = :ios, "10.0"

  spec.source       = { :git => "https://github.com/13662049573/TFY_AutoLayout.git", :tag => spec.version}

  spec.source_files  = "TFY_AutoLayout/TFY_AutoLayout/**/*.{h,m}","TFY_AutoLayout/TFY_AutoLayout/TFY_AutoLayout.h"
  
  spec.frameworks    = "Foundation","UIKit"

  spec.xcconfig      = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include" }
  
  spec.requires_arc = true

end
