Pod::Spec.new do |spec|
    spec.name = "FontBook"
    spec.version = "1.0.1"
    spec.swift_version = '4.0'
    spec.cocoapods_version = '>= 0.36'
    spec.authors = { "Brianna Lee" => 'bornbrie@icloud.com' }
    spec.license = { type: 'MIT', file: 'LICENSE' }
    spec.homepage = "https://github.com/bornbrie/FontBook"
    spec.source = { git: "https://github.com/bornbrie/FontBook.git", tag: "v#{spec.version}", submodules: true }
    spec.summary = "An easy, swifty, and enum(ey) font manager for iOS"
    
    spec.requires_arc = true
    spec.ios.framework  = 'UIKit'
    
    spec.source_files = "FontBook/**/*.{h,swift}"
    
end

