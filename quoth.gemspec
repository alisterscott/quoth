# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.authors       = ["Alister Scott"]
  gem.email         = ["alister.scott@gmail.com"]
  gem.description   = 'Random Quote of the day from wikiquotes'
  gem.summary       = 'Random Quote of the day from wikiquotes'
  gem.homepage      = ""
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "quoth"
  gem.require_paths = ["lib"]
  gem.version       = '0.0.1'
  gem.add_dependency 'nokogiri'
  gem.add_development_dependency 'rspec'
end