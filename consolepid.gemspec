# -*- encoding: utf-8 -*-
require File.expand_path('../lib/consolepid/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name                = "consolepid"

  gem.authors             = ["Jakub Wojtysiak"]
  gem.email               = "schizunio@gmail.com"

  gem.description         = "consolepid prints your ruby console process PID on startup"
  gem.summary             = "consolepid prints your ruby console process PID on startup"
  gem.homepage            = "http://github.com/schiza/consolepid"
  gem.version             = Consolepid::VERSION
  gem.license             = 'MIT'

  gem.files               = `git ls-files`.split($\)
  gem.require_paths       = ["lib"]
end
