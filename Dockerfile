FROM iamjrjohnson/docker-ilios-mysql

# customized to install ilios demo database
MAINTAINER Jonathan Johnson <jon.johnson@ucsf.edu>
ENV MYSQL_RANDOM_ROOT_PASSWORD yes
ENV MYSQL_USER ilios
ENV MYSQL_PASSWORD ilios
ENV MYSQL_DATABASE ilios
RUN apt-get update && apt-get install -y wget

COPY ilios-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 3306
CMD ["mysqld"]
