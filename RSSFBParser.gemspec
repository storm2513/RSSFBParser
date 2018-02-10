
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "RSSFBParser/version"
require "RSSFBParser/configuration"

Gem::Specification.new do |spec|
  spec.name          = "RSSFBParser"
  spec.version       = RSSFBParser::VERSION
  spec.authors       = ["Maksim Shilov"]
  spec.email         = ["storm25132513@gmail.com"]

  spec.summary       = "Gem that allows to get feed from both rss and facebook page"
  spec.description   = "Gem that allows to get feed from both rss and facebook page"
  spec.homepage      = "https://github.com/storm2513/RSSFBParser"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_dependency "rest-client"
  spec.add_dependency "rest-graph"
end
