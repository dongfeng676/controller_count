
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "controller_count/version"

Gem::Specification.new do |spec|
  spec.name          = "controller_count"
  spec.version       = ControllerCount::VERSION
  spec.authors       = ["zhangmingju"]
  spec.email         = ["1417278284@qq.com"]

  spec.summary       = %q{count controller execution times}
  spec.description   = %q{count controller execution times.}
  spec.homepage      = "http://bajiudongfeng.xyz:8080"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
