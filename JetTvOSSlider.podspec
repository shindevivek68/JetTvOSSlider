Pod::Spec.new do |s|
  s.name = 'JetTvOSSlider'
  s.author = 'Vivek Shinde'
  s.version = '0.0.1'
  s.license = 'MIT'
  s.summary = 'JetTvOSSlider is an implementation of UISlider for tvOS.'
  s.homepage = 'https://github.com/shindevivek68/JetTvOSSlider'
  s.source = { :git => 'https://github.com/shindevivek68/JetTvOSSlider.git', :tag => s.version }
  s.swift_version = '4.2'
  s.tvos.deployment_target = '9.0'
  s.source_files = 'JetTvOSSlider/**/*.swift'
end
