# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongomery/version'

Gem::Specification.new do |spec|
  spec.name          = "mongomery"
  spec.version       = Mongomery::VERSION
  spec.authors       = ["kazuki-yoshida"]
  spec.email         = ["kzk.yshd@gmail.com"]

  spec.summary       = %q{Convert MongoDB query to Arel for MySQL. Forked from miyagawa/mongery }
  spec.description   = %q{}
  spec.homepage      = "https://github.com/kazy1991/mongomery"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "arel", ">= 4.0.2"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "activerecord", ">= 4.0.0"
  spec.add_development_dependency "json_schema"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "mysql2"
end
