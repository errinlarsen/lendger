require File.expand_path("../lib/lendger/version", __FILE__)

Gem::Specification.new do |gem|
  gem.name = "lendger-core"
  gem.version = Lendger::VERSION
  gem.authors = [ "Errin Larsen" ]
  gem.email = [ "errinlarsen@gmail.com" ]
  gem.description = "Core Lendger application"
  gem.summary = gem.description
  gem.homepage = "https://github.com/errinlarsen/lendger"
  gem.license = "MIT"

  gem.require_paths = [ "lib" ]
  gem.files   = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {spec}/*`.split("\n")
  gem.extra_rdoc_files = %w[LICENSE README.md TODO.md]

  gem.add_dependency("virtus")
  gem.add_dependency("inflecto")
  gem.add_dependency("interactor")
end
