
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "trestle/good_job/version"

Gem::Specification.new do |spec|
  spec.name          = "trestle-good_job"
  spec.version       = Trestle::GoodJob::VERSION

  spec.authors       = ["Alberto Bertollo"]
  spec.email         = ["info@blhack.it"]

  spec.summary       = "Goodjob integration plugin for the Trestle admin framework."
  spec.homepage      = "https://www.trestle.io"
  spec.license       = "LGPL-3.0"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_dependency "trestle",      "~> 0.8"
  spec.add_dependency "trestle-auth", "~> 0.2", ">= 0.2.3"
  spec.add_dependency "good_job", ">= 2.0"
end
