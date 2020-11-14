# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ruby_coding_standard/version"

Gem::Specification.new do |spec|
  spec.name = "ruby_coding_standard"
  spec.version = RubyCodingStandard::VERSION
  spec.authors = ["Tema Bolshakov"]
  spec.email = ["either.free@gmail.com"]

  spec.summary = "Ruby coding standard focused on reducing unnecessary changes, consistency, and developer's happiness."
  spec.description = spec.summary
  spec.homepage = "https://github.com/bolshakov/ruby_coding_standard"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency "rubocop", "~> 1.0.0"
end
