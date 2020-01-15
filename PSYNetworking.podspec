
Pod::Spec.new do |spec|
  spec.name         = "PSYNetworking"
  spec.version      = "0.0.2"
  spec.summary      = "this is for psylifers"
  spec.homepage     = "https://github.com/PSYYunXi/PSYNetworking"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "yunxi" => "1521274774@qq.com" }
  spec.platform     = :ios
  spec.source       = { :git => "https://github.com/PSYYunXi/PSYNetworking.git", :tag => "#{spec.version}" }
  spec.requires_arc = true
  spec.source_files  = "PSYNetworking/*.*"
  spec.dependency "AFNetworking", "~> 3.2.1"

end
