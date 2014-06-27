Pod::Spec.new do |s|

  s.name         = "Gossip"
  s.version      = "0.1.0"
  s.summary      = "A SIP client library that wraps PJSIP into a nice and clean OO API."

  s.description  = <<-DESC
                   This pod provides an Objective-C API warpper for the PJSIP library.
                   DESC

  s.homepage     = "https://github.com/rwbr/gossip"
  s.license      = { :type => "Public Domain", :file => "License.md" }
  s.author             = { "Ralf Weinbrecher" => "developer@ralfweinbrecher.de" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/rwbr/gossip.git", :tag => "v0.1.0" }
  s.source_files  = 'Gossip/*.{h,m}'
  s.exclude_files = "Classes/Exclude"
  s.frameworks = s.frameworks = 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreMedia', 'CoreVideo', 'CoreAudio', 'Foundation'
  s.requires_arc = true
  s.xcconfig = { "HEADER_SEARCH_PATHS" => "${PODS_ROOT}/**" }
  s.dependency "pjsip", "~> 2.2"

end
