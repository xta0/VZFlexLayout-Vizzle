

Pod::Spec.new do |s|
  s.name         = "VZFlexLayoutAdapter"
  s.version      = "0.0.1"
  s.summary      = "A bridge between VZFlexLayout and Vizzle Framework"
  s.description  = <<-DESC
                    A bridge between VZFlexLayout and Vizzle Framework"
                   DESC
  s.homepage     = "https://github.com/Vizzle/VZFlexLayout"
  s.license      = "MIT"

  s.author             = { "xta0" => "taoxu.dev@gmail.com" }
  s.source       = { :git => "https://github.com/xta0/VZFlexLayout-Vizzle.git", :tag => "#{s.version}" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.source_files  = "VZFlexLayoutAdapter/**/*.{h,m,mm}"
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"
  s.library = 'c++'
  s.dependency "VZFlexLayout"
  s.dependency "Vizzle"


end
