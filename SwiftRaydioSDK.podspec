Pod::Spec.new do |s|
    s.name         = "SwiftRaydioSDK"
    s.version      = "2.01.1"
    s.summary      = "mycrocast raydio SDK"
    s.description  = "SDK for integration of the raydio functionality"
    s.homepage     = "https://mycrocast.com"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2018
                   Permission is granted to...
                  LICENSE
                }
    s.author             = "mycrocast Gmbh"
    s.source       = { :git => "https://github.com/mycrocast/mycrocastSwitRaydioSDK.git", :tag => "2.01.1" }
    s.vendored_frameworks = "frameworks/SwiftRaydioSDK.xcframework", "deps/Mediasoup.xcframework", "deps/WebRTC.xcframework"
    s.dependency 'Socket.IO-Client-Swift', '~> 16.0'
    s.platform = :ios
    s.swift_version = "5.4"
    s.ios.deployment_target  = '14.0'
end
