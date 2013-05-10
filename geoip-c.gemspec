Gem::Specification.new do |s|
  s.name              = 'geoip-c'
  s.version           = "0.8.1"

  s.authors           = ['Ryan Dahl', 'Matt Todd', 'Charles Brian Quinn', 'Michael Sheakoski', 'Silvio Quadri', 'Andy Lindeman']
  s.email             = ['alindeman@gmail.com', 'mtodd@highgroove.com']

  s.summary           = "A Binding to the GeoIP C library"
  s.description       = 'Generic GeoIP lookup tool. Based on the geoip_city RubyGem by Ryan Dahl'
  s.homepage          = "http://github.com/mtodd/geoip"

  s.files             = ["Rakefile", "ext/geoip/extconf.rb", "test.rb", "ext/geoip/geoip.c", "README.md"]
  s.test_files        = ['test.rb']
  s.extensions        = ['ext/geoip/extconf.rb']
  s.require_path      = '.'
end
