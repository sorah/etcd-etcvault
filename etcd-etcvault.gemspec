# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'etcd/etcvault/version'

Gem::Specification.new do |spec|
  spec.name          = "etcd-etcvault"
  spec.version       = Etcd::Etcvault::VERSION
  spec.authors       = ["Shota Fukumori (sora_h)"]
  spec.email         = ["sorah@cookpad.com"]

  spec.summary       = %q{etcd-ruby extension for etcvault https://github.com/sorah/etcvault}
  spec.homepage      = "https://github.com/sorah/etcd-etcvault"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "etcd"
end
