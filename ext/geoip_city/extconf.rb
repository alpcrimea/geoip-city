require 'mkmf'

candidates = ['/usr/local', '/opt/local', '/sw/local', '/usr']
candidates.reject! { |d| !File.directory?("#{d}/include") || !File.directory?("#{d}/lib") }

dir_config("geoip", candidates)

if have_header('GeoIPCity.h') && have_library('GeoIP', 'GeoIP_record_by_ipnum')
  create_makefile('geoip_city')
else
  abort("you must have geoip c library installed!")
end
