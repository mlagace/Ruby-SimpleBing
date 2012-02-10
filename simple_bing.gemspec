Gem::Specification.new do |s|
  s.name        = 'simple_bing'
  s.version     = '1.0.1'
  s.date        = '2012-02-09'
  s.summary     = "SimpleBing"
  s.description = "A lightweight API wrapper for the Bing Search API"
  s.authors     = ["Matthew Lagace"]
  s.email       = 'matthewlagace@gmail.com'
  s.files       = ["lib/simple_bing.rb"]
  s.homepage    =
    'http://rubygems.org/gems/simple_bing'
  s.add_runtime_dependency "json",
      ["= 1.6.3"]
  s.add_development_dependency "json",
    ["= 1.6.3"]
  s.license = 'MIT'
end