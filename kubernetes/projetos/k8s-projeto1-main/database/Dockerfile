FROM mysql:5.7

WORKDIR /var/lib/mysql/

ENV MYSQL_ROOT_PASSWORD=Senha456

ENV MYSQL_DATABASE=meubanco

COPY sql.sql /docker-entrypoint-initdb.d/

EXPOSE 3306 