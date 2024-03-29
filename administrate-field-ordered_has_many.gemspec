lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "administrate/field/ordered_has_many/version"

Gem::Specification.new do |spec|
  spec.name          = "administrate-field-ordered_has_many"
  spec.version       = Administrate::Field::OrderedHasMany::VERSION
  spec.authors       = ["Kristof Redei"]
  spec.email         = ["kristof@coderedcode.com"]

  spec.summary       = "Plugin that allows managing ordered has_many associations within Administrate."
  spec.homepage      = "https://github.com/coderedcode/administrate-field-ordered_has_many"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "administrate"
  spec.add_runtime_dependency "rails", ">= 5.0"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
