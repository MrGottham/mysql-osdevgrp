## Install MySQL
FROM mysql:5.7
RUN sed -i '/#!\/bin\/bash/achown mysql:mysql /var/run/mysqld' /usr/local/bin/docker-entrypoint.sh
RUN sed -i '/#!\/bin\/bash/amkdir -p /var/run/mysqld' /usr/local/bin/docker-entrypoint.sh

## Setup MySQL
ENV MYSQL_RANDOM_ROOT_PASSWORD yes

EXPOSE 3306 33060
VOLUME ["/var/lib/mysql"]