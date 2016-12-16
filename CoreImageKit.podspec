Pod::Spec.new do |s|
  s.name         = "CoreImageKit"
  s.version      = "1.0.0"
  s.summary      = "The simplest CoreImage library."
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Huang Xinping" => "o0402@outlook.com" }
  s.social_media_url   = "https://weibo.com/o0402-monor"

  s.platform     = :ios, "8.0"

  s.source       = {
  	:git => "https://github.com/huangxinping/CoreImageKit.git",
  	:tag => s.version.to_s,
  	:branch => 'master'
  }

  s.homepage = "https://github.com/huangxinping/CoreImageKit.git"
  s.source_files  =  "CoreImageKit/*.{h,swift}"
end
