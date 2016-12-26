# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'divine_rapier/version'

Gem::Specification.new do |spec|
  spec.name          = "divine_rapier"
  spec.version       = DivineRapier::VERSION
  spec.authors       = ["Phuong 'J' Le H."]
  spec.email         = ["phuonglh0420@gmail.com"]

  spec.summary       = %q{A friendly interface for projects with microservices design based on docker / docker-compose}
  spec.description   = %q{Working with microservices based on docker is great, but sometime it is inconvenience for switching folders to run your favourite command. `dr` had been made to help me to execute commands in my favourite way}
  spec.homepage      = "https://github.com/yeuem1vannam/DivineRapier.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"
end
