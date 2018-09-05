## Install MySQL
FROM mysql:5.7.23

## Setup MySQL
ENV MYSQL_RANDOM_ROOT_PASSWORD yes

EXPOSE 3306 33060
VOLUME ["/var/lib/mysql"]