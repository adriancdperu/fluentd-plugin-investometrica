# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Adrian"]
  gem.email         = ["adrian@investometrica.com"]
  gem.description   = %q{Extended tail input plugin}
  gem.summary       = %q{Extended tail input plugin}
  gem.homepage      = "http://code.investometrica.com"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "fluents-plugin-investometrica"
  gem.require_paths = ["lib"]
  gem.version       = "0.1.0"

  requires = ['fluentd', 'fluent-mixin-config-placeholders']
  requires.each {|name| gem.add_runtime_dependency name}
  requires += ['rake', 'flexmock']
  requires.each {|name| gem.add_development_dependency name}
end
