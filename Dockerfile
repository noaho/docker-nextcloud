FROM linuxserver/nextcloud

COPY 70-pathconfig /etc/cont-init.d
COPY phpsed.php /

HEALTHCHECK --start-period=600s CMD curl -f http://localhost:443/nextcloud || exit 1