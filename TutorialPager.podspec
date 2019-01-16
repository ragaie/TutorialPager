
Pod::Spec.new do |s|
  s.platform = :ios
  s.name             = 'TutorialPager'
  s.version          = '0.0.2'
  s.summary          = 'Scroll tutorial for iOS application that you can pass it images or viewcontroller'
 
  s.description      = <<-DESC
Horizontal scroll view that can be used for images or view controller
                       DESC
 
  s.homepage         = 'https://github.com/ragaie/TutorialPager'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ragaie Alfy' => 'eng.ragaie@gmail.com' }
  s.source           = { :git => 'https://github.com/ragaie/TutorialPager', :tag => s.version.to_s }
 
  s.framework = "UIKit","Foundation"
  s.ios.deployment_target = '8.0'

  s.source_files = 'TutorialPager/viewTutorial/*.swift'
  s.resources = 'TutorialPager/viewTutorial/*.xib'
  s.resource_bundle = {'TutorialPager' => ['TutorialPager/viewTutorial/TutorialView.xib']}

  
end