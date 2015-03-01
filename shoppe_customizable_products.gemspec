$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "shoppe_customizable_products/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "shoppe_customizable_products"
  s.version     = ShoppeCustomizableProducts::VERSION
  s.authors     = ["Gabriel Taylor-Russ"]
  s.email       = ["gabriel.taylor.russ@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ShoppeCustomizableProducts."
  s.description = "TODO: Description of ShoppeCustomizableProducts."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
end
