-- local inspect = require "inspect"
-- local ipfinder = require "ipfinder" # test ipfinder Library

description = [[
Use Ipfinder to lookup the geolocation information with ipfinder-cli
get details for : ip,type,continent_code,country_name,country_native_name,region_name,city,latitude,longitude,location,capital,country_flag,flag_png,country_flag_emoji,country_flag_emoji_unicode,calling_code,toplevel_domain,alpha3_code,population,is_eu,is_ar,time_zone,id,UTC,gmt_offset,current_time,currency,name,symbol,symbol_native,languages,code,name,name_native,connection,asn,organization,domain,type,security,is_proxy,proxy_type,is_tor,is_spam,threat_level"
https://ipfinder.io/docs/#response-objects-details
]]

---
-- @usage
-- nmap --script ipfinder <target>
--
-- @output
-- |status                          | {!} ok  
-- |status_message                  | {!} Query was successful  
-- |ip                              | {!} 54.149.7.155  
-- |type                            | {!} IPV4  
-- |continent_code                  | {!} NA  
-- |continent_name                  | {!} North America  
-- |country_code                    | {!} US  
-- |country_name                    | {!} United States  
-- |country_native_name             | {!} United States  
-- |region_name                     | {!} Oregon  
-- |city                            | {!} Portland  
-- |latitude                        | {!} 45.5235  
-- |longitude                       | {!} -122.676  
-- |capital                         | {!} Washington, D.C.  
-- |country_flag                    | {!} https://ipfinder.io/flag/usa.svg  
-- |flag_png                        | {!} https://ipfinder.io/flag/usa.png  
-- |country_flag_emoji              | {!} 🇺🇸  
-- |country_flag_emoji_unicode      | {!} U+1F1FA U+1F1F8  
-- |calling_code                    | {!} 1  
-- |toplevel_domain                 | {!} .us  
-- |alpha3_code                     | {!} USA  
-- |population                      | {!} 321645000  
-- |is_eu                           | {!} False  
-- |is_ar                           | {!} False  
-- |id                              | {!} America/New_York  
-- |UTC                             | {!} UTC−12:00  
-- |gmt_offset                      | {!} -14400  
-- |current_time                    | {!} 2019-08-28 11:56:49  
-- |name                            | {!} United States dollar  
-- |symbol                          | {!} USD  
-- |symbol_native                   | {!} $  
-- |code                            | {!} en  
-- |name                            | {!} English  
-- |name_native                     | {!} English  
-- |asn                             | {!} 16509  
-- |organization                    | {!} Amazon.com, Inc.  
-- |domain                          | {!} amazonaws.com  
-- |type                            | {!} Business  
-- |is_proxy                        | {!} False  
-- |proxy_type                      | {!} False  
-- |is_tor                          | {!} False  
-- |is_spam                         | {!} False  
-- |threat_level                    | {!} Low  
-- |total_user_agent                | {!} 0  
-- |list_user_agent                 | {!} null  


author = "IPFinder"
license = "Same as Nmap--See https://nmap.org/book/man-legal.html"
categories = {"discovery","external","safe"}

hostrule = function(host)

  return true
  
end



action = function(host,port)

  local handle = os.execute('ipfinder -i '.. host.ip)

  return (handle)
end