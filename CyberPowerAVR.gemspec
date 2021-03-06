# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'CyberPowerAVR/version'

Gem::Specification.new do |spec|
  spec.name          = 'CyberPowerAVR'
  spec.version       = CyberPowerAVR::VERSION
  spec.authors       = ['Saimon Lovell']
  spec.email         = ['staysynchronize@gmail.com']
  spec.summary       = %q{Get UPS CyberPower AVR Information.}
  spec.description   = %q{Get UPS CyberPower AVR Information.}
  spec.homepage      = ""
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.0'
end
