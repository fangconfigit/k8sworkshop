# Integrated with NextCloud
Deploy Hearbeat Control system together with NextCloud
 - mariadb:10.11    - mysql db
 - nextcloud    - Nextcloud Hub10,  port 8080
 - phpmyadmin   - DB admin, port 8081
 - ts01soonr/cfg    -HearBeat Server port 8082
 - ts01soonr/ace    -HearBeat Client,port 8088

# Docker volumes mapping 

volumes:
 - ./www:/var/www/html
 - ./db:/var/lib/mysql

# Enviroment file (.env)

```
MYSQL_ROOT_PASSWORD=example_root_password
MYSQL_DATABASE=nextcloud
MYSQL_USER=nextclouduser
MYSQL_PASSWORD=example_password
HB_USER=mycfg
HB_PWD=myace
HB_DATABASE=myDb
```


