lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll-site-config/version"
Gem::Specification.new do |spec|
  spec.name          = "jekyll-site-config"
  spec.summary       = "Add custom data to Jekyll site config object"
  spec.description   = "Add custom data to Jekyll site config object"
  spec.version       = JekyllSiteConfig::VERSION
  spec.authors       = ["Jam Risser"]
  spec.email         = ["jam@jamrizzi.com"]
  spec.homepage      = "https://github.com/jamrizzi/jekyll-site-config"
  spec.licenses      = ["MIT"]
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r!^(test|spec|features)/!)  }
  spec.require_paths = ["lib"]
  spec.add_dependency "jekyll", "~> 3.0"
  spec.add_development_dependency "rake", "~> 11.0"
  spec.add_development_dependency "rspec", "~> 3.5"
  spec.add_development_dependency "rubocop", "~> 0.52"
end
