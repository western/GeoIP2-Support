
# GeoIP2-Support

## Get maxmind CSV archive

 cd db
 
 curl -o GeoLite2-Country-CSV.zip "https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-Country-CSV&license_key=qHbaH2eibSCwvSs&suffix=zip"
 
 unzip GeoLite2-Country-CSV.zip
 
 rm GeoLite2-Country-CSV.zip
 
 mv GeoLite2* geocsv

## Edit personal network masks

 Edit file db/GeoLite2-Country-Blocks-IPv4-My.csv
 
## Compile

 bin/make_mmdb.pl
 
