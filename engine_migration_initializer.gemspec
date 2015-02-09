# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'engine_migration_initializer/version'

Gem::Specification.new do |spec|
  spec.name          = "engine_migration_initializer"
  spec.version       = EngineMigrationInitializer::VERSION
  spec.authors       = ["Diego Salazar"]
  spec.email         = ["diego@greyrobot.com"]
  spec.summary       = %q{Allows a Rails engine's migrations to be loaded by the host app rather than having to copy them over with `rake your_engine:install:migrations`.}
  spec.description   = %q{Allows a Rails engine's migrations to be loaded by the host app rather than having to copy them over with `rake your_engine:install:migrations`.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
