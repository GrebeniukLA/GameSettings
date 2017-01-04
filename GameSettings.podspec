
Pod::Spec.new do |s|


s.name         = "GameSettings"
s.version      = "1.0.6"
s.summary      = "A short description of GameSettings."
s.description  = "GameSettings"

s.homepage     = "https://vk.com/mybraingames"
s.license      = "MIT"
s.authors      = "LG"
s.platform     = :ios, "9.0"

s.source       = { :git => "https://github.com/GrebeniukLA/GameSettings", :tag => "#{s.version}" }
#s.source       = { :path => '.' }

# { :path => '.' }
#{ :git => "http://EXAMPLE/ParentsGate.git", :tag => "#{s.version}" }

s.source_files  = "GameSettings", "GameSettings/**/*.{h,m,swift,xib,xcassets}"


#s.dependency 'ParentsGate', :git => 'https://github.com/GrebeniukLA/ParentsGate.git'
#s.dependency 'Crashlytics'

end
