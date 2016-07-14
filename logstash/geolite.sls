download_city_dat:
  cmd.run:
    - name: curl http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.xz | unxz > /etc/logstash/GeoLiteCity.dat
    - creates: /etc/logstash/GeoLiteCity.dat

curl http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.xz | unxz > /etc/logstash/GeoLiteCity.dat:
  cron.present:
    - month: 1
