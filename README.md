
# GeoIP2-Support

 Compile and edit mmdb database

## Get maxmind CSV archive

 cd db
 
 curl -o GeoLite2-Country-CSV.zip "https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-Country-CSV&license_key=qHbaH2eibSCwvSs&suffix=zip"
 
 unzip GeoLite2-Country-CSV.zip
 
 rm GeoLite2-Country-CSV.zip
 
 mv GeoLite2* geocsv
 
## Cpanminus require

 cpanm --installdeps .

## Add/Edit personal network masks

 Edit file db/GeoLite2-Country-Blocks-IPv4-My.csv
 
 This records will merge with original database
 
## Compile

 bin/make_mmdb.pl
 
