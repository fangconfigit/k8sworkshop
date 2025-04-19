# Integrated with NextCloud
Deploy Hearbeat Control system together with NextCloud
 - mariadb:10.11
 - nextcloud:latest - port 8080
 - phpmyadmin - port 8081
 - ts01soonr/cfg - port 8082

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


