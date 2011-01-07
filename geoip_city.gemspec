# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{geoip_city}
  s.version = "0.3.0.alpha.1"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["ry dahl"]
  s.date = %q{2011-01-07}
  s.description = %q{A Binding to the GeoIP C library}
  s.email = %q{ry@tinyclouds.org}
  s.extensions = ["ext/geoip_city/extconf.rb"]
  s.files = ["ext/geoip_city/geoip_city.c", "ext/geoip_city/extconf.rb", "test/test.rb", "Rakefile", "README.md"]
  s.homepage = %q{http://geoip_city.rubyforge.org}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{A Binding to the GeoIP C library}
  s.test_files = ["test/test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake-compiler>, ["~> 0.7.5"])
    else
      s.add_dependency(%q<rake-compiler>, ["~> 0.7.5"])
    end
  else
    s.add_dependency(%q<rake-compiler>, ["~> 0.7.5"])
  end
end
