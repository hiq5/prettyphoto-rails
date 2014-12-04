Gem::Specification.new do |s|
  s.name        = 'prettyphoto-rails'
  s.version     = '0.2.3'
  s.date        = '2014-12-04'
  s.summary     = 'Rails gem for easy prettyPhoto integration.'
  s.description = 'Rails gem for easy prettyPhoto (v3.1.5) integration. See http://www.no-margin-for-errors.com/projects/prettyphoto-jquery-lightbox-clone/ for more information on how to use prettyPhoto.'
  s.authors     = ['Christian Mager']
  s.email       = 'cm@hiq5.com'
  s.homepage    = 'http://github.com/hiq5/prettyphoto-rails'
  s.files       = Dir.glob("{vendor,lib}/**/*") + %w(LICENSE Readme.md)
  s.add_dependency('rails', '>= 3.1')
  s.add_dependency('jquery-rails')
  s.add_dependency('sass-rails')
  s.add_dependency('uglifier')
end
