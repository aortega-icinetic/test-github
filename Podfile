source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

target 'AGitTest' do

    pod 'Alamofire', '~> 3.5.0'
    pod 'SDWebImage', '~> 3.8.0'
    pod 'SlideMenuControllerSwift', '~> 2.3.0'
    pod 'SVProgressHUD', '~> 2.0.0'
    pod 'IBMMobileFirstPlatformFoundation', '~> 7.1.0'
		
end

target 'AGitTestTests' do

end

target 'AGitTestUITests' do

end

post_install do |installer|
	installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '2.3'
        end
    end
end


