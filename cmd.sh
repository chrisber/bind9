docker run \
--rm \
--name bind9 \
-p "53:53/udp" \
-p "53:53/tcp" \
-v "${PWD}/named.conf":/etc/bind/named.conf:ro \
-v "${PWD}/named.conf.local":/etc/bind/named.conf.local:ro \
-v "${PWD}/named.conf.log":/etc/bind/named.conf.log:ro \
-v "${PWD}/named.conf.options":/etc/bind/named.conf.options:ro \
-v "${PWD}/zones/db.192.168":/etc/bind/zones/db.192.168:ro \
-v "${PWD}/zones/db.nyc3.example.com":/etc/bind/zones/db.nyc3.example.com:ro \
chrisber/bind9