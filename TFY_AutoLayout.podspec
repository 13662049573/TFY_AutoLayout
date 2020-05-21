

Pod::Spec.new do |spec|
  spec.name         = "TFY_AutoLayout"

  spec.version      = "2.5.4"

  spec.summary      = "简介高效，链式点语法布局工具"

  spec.description  = "简介高效，链式点语法布局工具"

  spec.homepage     = "https://github.com/13662049573/TFY_AutoLayout"

  spec.license      = "MIT"

  spec.author       = { "tianfengyou" => "420144542@qq.com" }

 
  spec.ios.deployment_target = '10.0' 
  spec.osx.deployment_target = '10.10' 
  spec.tvos.deployment_target = '10.0' 

  spec.source       = { :git => "https://github.com/13662049573/TFY_AutoLayout.git", :tag => spec.version}


  spec.source_files  = "TFY_AutoLayout/TFY_AutoLayout/TFY_AutoLayout.h"
  

  spec.subspec 'Util' do |s|
    s.source_files  = "TFY_AutoLayout/TFY_AutoLayout/Util/**/*.{h,m}"
  end

  spec.subspec 'IOS_Layout' do |s|
    s.dependency "TFY_AutoLayout/Util"
    s.source_files  = "TFY_AutoLayout/TFY_AutoLayout/IOS_Layout/**/*.{h,m}"
    
  end

  spec.subspec 'MAC_Layout' do |s|
    s.dependency "TFY_AutoLayout/Util"
    s.source_files  = "TFY_AutoLayout/TFY_AutoLayout/MAC_Layout/**/*.{h,m}"
    
  end

  spec.ios.frameworks = 'Foundation', 'UIKit'
  spec.tvos.frameworks = 'Foundation', 'UIKit'
  spec.osx.frameworks = 'Foundation', 'AppKit'

  # spec.xcconfig      = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include" }
  
  spec.requires_arc = true

end
