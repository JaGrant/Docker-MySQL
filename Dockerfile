## MySQL 5.6

## Pull the mysql:5.6 image
FROM mysql:5.6

## The maintainer name and email
MAINTAINER Jason Grant <jasongrant@serverfox.co.uk>

# Install additional packages (vim & cron)
RUN apt-get update && apt-get install -y vim && apt-get -y install cron

# Set up cron to export db data
RUN mkdir /db-exports
ADD scripts/export-db /etc/cron.d/db-export-cron
RUN chmod 0644 /etc/cron.d/db-export-cron
RUN crontab /etc/cron.d/db-export-cron
RUN touch /var/log/cron.log

# Import Services Script
ADD scripts/startServices.sh /
RUN chmod 0644 /startServices.sh
RUN chmod a+x /startServices.sh

CMD [ "/startServices.sh" ]
