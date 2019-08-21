Pod::Spec.new do |s|
    s.name             = 'MSAUserDefaults'
    s.version          = '2.0.0'
    s.summary          = 'UserDefaults helper for iOS apps.'
    
    s.homepage         = 'https://github.com/aslanmehmetsalih/MSAUserDefaults'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'aslanmehmetsalih' => 'aslanmsalih@gmail.com' }
    s.source           = { :git => 'https://github.com/aslanmehmetsalih/MSAUserDefaults.git', :tag => s.version.to_s }
    s.social_media_url = 'https://twitter.com/aslanmsalih'
    
    s.ios.deployment_target = '8.0'
    s.swift_version = '5.0'
    
    s.source_files = 'MSAUserDefaults/Classes/**/*'
end
