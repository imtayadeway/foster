Gem::Specification.new do |s|
  s.name        = "foster"
  s.version     = "0.0.0"
  s.date        = "2016-09-11"
  s.summary     = "Foster is an ISBN parser"
  s.description = "Foster is an ISBN parser written in pure Ruby"
  s.authors     = ["Tim Wade"]
  s.email       = "hello@timjwade.com"
  s.files       = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^test/}) }
  s.homepage    = "http://rubygems.org/gems/foster"
  s.license     = "GNU GPLv3"
end
