
Pod::Spec.new do |spec|
  spec.name         = "PSYNetworking"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of PSYNetworking."
  spec.homepage     = "http://EXAMPLE/PSYNetworking"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.author             = { "yunxi" => "1521274774@qq.com" }
  spec.platform     = :ios
  spec.source       = { :git => "http://EXAMPLE/PSYNetworking.git", :tag => "#{spec.version}" }
  spec.requires_arc = true
  spec.source_files  = "PSYNetworking/*.*"
  spec.dependency "AFNetworking", "~> 1.4"

end
