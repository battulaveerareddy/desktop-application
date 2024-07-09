
FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=my-secret-pw
ENV MYSQL_DATABASE=my_database
ENV MYSQL_USER=my_user
ENV MYSQL_PASSWORD=my_password

COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 3306

VOLUME /var/lib/mysql

CMD ["mysqld"]
