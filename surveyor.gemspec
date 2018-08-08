lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "surveyor/version"

Gem::Specification.new do |spec|
  spec.name          = "surveyor"
  spec.version       = Surveyor::VERSION
  spec.authors       = ["Ryan Bigg"]
  spec.email         = ["ryanbigg@cultureamp.com"]

  spec.summary       = "Culture Amp Junior Engineering Program Coding Test"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop"
end
