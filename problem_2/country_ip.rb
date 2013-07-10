class CountryIp

require 'geocoder' # Install geocoder gem
require 'digest/md5'

attr_reader :md5_digest
  
  def initialize
    # {PeterPrabu} {2 years 5 months}
    @md5_digest = Digest::MD5.file('IpToCountry.csv').hexdigest
  end
  
  def search(ip_string)
    # {PeterPrabu} {2 years 5 months}
     geo_data = Geocoder.search(ip_string)
     if geo_data[0] == nil
     	raise ArgumentError.new("Invalid IP")
     elsif ip_string =~ /\d/
     	return geo_data[0].country
     else
     	raise ArgumentError.new("Bad Input")
     end
  end

end
