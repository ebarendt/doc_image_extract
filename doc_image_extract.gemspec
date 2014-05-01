# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'doc_image_extract/version'

Gem::Specification.new do |spec|
  spec.name          = "doc_image_extract"
  spec.version       = "0.0.2"
  spec.authors       = ["Eric Barendt"]
  spec.email         = ["ebarendt@gmail.com"]
  spec.summary       = %q{Extracts all images from a given Word document.}
  spec.description   = %q{Extracts all images from a given Word document.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
