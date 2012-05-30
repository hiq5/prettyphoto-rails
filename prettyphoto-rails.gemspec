Gem::Specification.new do |s|
  s.name        = 'prettyphoto-rails'
  s.version     = '0.1.0'
  s.date        = '2012-05-30'
  s.summary     = 'Rails gem for easy prettyPhoto integration.'
  s.description = 'Rails gem for easy prettyPhoto integration. See http://www.no-margin-for-errors.com/projects/prettyphoto-jquery-lightbox-clone/ for more information on how to use prettyPhoto.'
  s.authors     = ['Christian Mager']
  s.email       = 'cm@hiq5.com'
  s.homepage    = 'http://github.com/hiq5/prettyphoto-rails'
  s.files       = Dir.glob("{vendor,lib}/**/*") + %w(LICENSE Readme.md)
  s.add_dependency('rails', '>= 3.2')
  s.add_dependency('jquery-rails')
  s.add_dependency('sass-rails')
  s.add_dependency('uglifier')
end
