ssh root@139.162.209.68
mkdir passvault
cd passvault/
wget https://download.passbolt.com/ce/docker/docker-compose-ce.yaml
nano docker-compose-ce.yaml
docker-compose -f docker-compose-ce.yaml ip -d
nano docker-compose-ce.yaml
nano traefik.yaml
mkdir conf
cd conf
nano headers.yaml
nano tls.yaml
cd ..
docker-compose -f docker-compose-ce.yaml up -d
docker ps
docker-compose -f docker-compose-ce.yaml exec passbolt su -m -c "/usr/share/php/passbolt/bin/cake \
>                                 passbolt register_user \
>                                 -u x20124619@student.ncirl.ie \
> -f Dylan \
> -l McBride \
> -r admin" -s /bin/sh www-data