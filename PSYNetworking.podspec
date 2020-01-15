
Pod::Spec.new do |spec|
  spec.name         = "PSYNetworking"
  spec.version      = "0.1.4"
  spec.summary      = "this is for psylifers"
  spec.homepage     = "https://github.com/PSYYunXi/PSYNetworking"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "yunxi" => "1521274774@qq.com" }
  spec.platform     = :ios
  spec.source       = { :git => "https://github.com/PSYYunXi/PSYNetworking.git", :tag => "#{spec.version}" }
  spec.requires_arc = true
  spec.source_files  = "PSYNetworking/PSYUtils.h"
  spec.dependency "AFNetworking", "~> 3.2.1"
  spec.public_header_files = "PSYNetworking/PSYUtils.h"
  
  
  spec.subspec "category" do |ss|
  ss.source_files = "PSYNetworking/category/*.*"
  ss.dependency "AFNetworking", "~> 3.2.1"
  end
end
