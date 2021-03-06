#
# Be sure to run `pod lib lint JWTools.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'JWTools'
    s.version          = '0.1.4'
    s.summary          = '一些方便开发的类'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
    "本人收集和整理的一些方便开发的类"
    
    * Markdown format.
    * Don't worry about the indent, we strip it!
    DESC
    
    s.homepage         = 'https://github.com/jw10126121/JWTools'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = 'MIT'
    s.author           = { 'jw10126121' => '10126121@qq.com' }
    s.source           = { :git => 'https://github.com/jw10126121/JWTools.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    
    s.ios.deployment_target = '9.0'
    
    s.swift_version     = '4.2'
    
    s.source_files = 'JWTools/Classes/**/*'

#    s.default_subspec   = 'JWUIHelper'
#
#    s.subspec 'JWUIHelper' do |ss|
#
#        ss.source_files  = 'JWTools/Classes/JWUIHelper/*'
##        ss.public_header_files  = 'JWTools/Classes/JWUIHelper/*'
#        ss.dependency 'JWTools/JWToolsCore'
#        ss.framework     = 'UIKit'
#
#    end
#
#    s.subspec 'JWToolsCore' do |ss|
#
#        ss.source_files  = 'JWTools/Classes/JWToolsCore/*'
##        ss.public_header_files  = 'JWTools/Classes/JWToolsCore/*'
#        ss.framework     = 'Foundation'
#
#    end



    
end

