require 'rake/testtask'
require 'rake/rdoctask'
require 'rubygems/package_task'
require 'rake/extensiontask'

task :default => [:compile, :test]

spec = Gem::Specification.new do |s|
  s.name              = 'geoip_city'
  s.author            = 'ry dahl'
  s.email             = 'ry@tinyclouds.org'
  s.version           = "0.3.0.beta"
  s.summary           = "A Binding to the GeoIP C library"
  s.description       = s.summary
  s.homepage          = "http://geoip_city.rubyforge.org"
  s.files             = FileList['ext/**/*.{c,rb}', 'test/*.rb', 'Rakefile', 'README.md']
  s.test_files        = FileList['test/*.rb']
  s.extensions        = FileList['ext/*/extconf.rb']
  s.require_path      = 'lib'
end

Rake::ExtensionTask.new('geoip_city', spec) do |ext|
end

Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_files.add ['README.md', 'ext/geoip_city/geoip_city.c']
  rdoc.main = "README.md" # page to start on
  rdoc.rdoc_dir = 'doc' # rdoc output folder
end

Rake::TestTask.new do |t|
  t.test_files = FileList['test/test.rb']
  t.verbose = true
end

Gem::PackageTask.new(spec) do |pkg|
  pkg.need_tar = true
end

task(:webpage) do
  sh 'scp -r doc/* rydahl@rubyforge.org:/var/www/gforge-projects/geoip-city/'
end

file 'GeoLiteCity.dat.gz' do
  sh "wget -c http://www.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz"
end

file 'GeoLiteCity.dat' => ['GeoLiteCity.dat.gz'] do
  sh "gunzip GeoLiteCity.dat.gz"
  touch 'GeoLiteCity.dat'
end

task :database => ['GeoLiteCity.dat'] do
  ENV['GEOIP_DB'] = 'GeoLiteCity.dat'
end

task :test => [:database]
