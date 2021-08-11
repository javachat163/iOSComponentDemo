Pod::Spec.new do |s|
  s.name             = 'devopsTestCloud_mars_tob_test'
  s.version          = '0.0.2'
  s.summary          = 'A short description of devopsTestCloud_mars_tob_test.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://devopsTestCloud_mars_tob'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mars' => 'mars@bytedance.com' }
  s.ios.deployment_target = '8.0'
  s.source 	= { :git => 'git@github.com:bytedance-mars/iOSComponentDemo.git'}
  s.source_files = 'DevopsTestModule/DevopsTestModule/**/*.{h,m}' 
  s.default_subspecs = 'Core'
  s.subspec 'Core' do |ss|
    ss.source_files = 'DevopsTestModule/DevopsTestModule/*.{h,m}' 
  end 
  s.subspec 'AAS' do |ss| 
    ss.source_files = 'DevopsTestModule/DevopsTestModule/AA/*.{h,m}' 
    ss.dependency 'devopsTestCloud_mars_tob/Core'
  end
  s.subspec 'BBS' do |ss|
    ss.source_files = 'DevopsTestModule/DevopsTestModule/BB/*.{h,m}' 
    ss.dependency 'devopsTestCloud_mars_tob/Core'
  end
  s.subspec 'ModuleInterface' do |ss|
    ss.subspec 'MIA' do |sss|
        sss.source_files = 'devopsTestCloud/DevopsTestModule/AA/*.{h,m}' 
    end
    ss.subspec 'MIB' do |sss|
        sss.source_files = 'devopsTestCloud/DevopsTestModule/BB/*.{h,m}' 
    end
  end

end
