# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'persistent-cache/version'

Gem::Specification.new do |spec|
  spec.name          = "persistent-cache-storage-api"
  spec.version       = Persistent::Cache::StorageApi::VERSION
  spec.authors       = ["Ernst Van Graan"]
  spec.email         = ["ernst.van.graan@hetzner.co.za"]

  spec.summary       = %q{This gem encodes the API that Persistent::Cache providers adhere to in order to plug in as a back-end provider.}
  spec.description   = %q{This gem encodes the API that Persistent::Cache providers adhere to in order to plug in as a back-end provider.}
  spec.homepage      = "https://github.com/evangraan/persistent-cache-storage-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
