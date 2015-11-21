Pod::Spec.new do |s|
  s.name     = 'CanvasKit'
  s.version  = '0.6.52'
  s.license  = 'MIT'
  s.summary  = 'A Canvas API integration framework better than bamboo'
  s.homepage = 'https://github.com/instructure/CanvasKit'
  s.authors  = { 'Rick Roberts' => 'elgreco84@gmail.com', 'Jason Larsen' => 'jason.larsen@gmail.com' }
  s.source   = { :git => 'https://github.com/instructure/CanvasKit.git', :tag => '0.6.52' }
  s.requires_arc = true

  s.ios.deployment_target = '7.0'
  s.ios.source_files = 'CanvasKit/**/*.{h,m}'
  
  s.resources = 'CanvasKit/**/*.{js}','CanvasKit/**/*.{css}'

  s.dependency 'AFNetworking', '~> 2.5.1'
  s.dependency 'Mantle', '1.5.5'
  s.dependency 'ISO8601DateFormatter', '~> 0.7'
  s.dependency 'ReactiveCocoa', '~> 2.4.2'
end
