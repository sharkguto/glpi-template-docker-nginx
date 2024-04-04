FROM bitnami/php-fpm:8.3

ARG USERNAME

COPY devops/bitnami.conf /opt/bitnami/php/etc/common.conf

RUN sed -i s/USERNAME/${USERNAME}/g /opt/bitnami/php/etc/common.conf

RUN cat /opt/bitnami/php/etc/common.conf

WORKDIR /app

RUN apt update
RUN apt upgrade -y
RUN apt install tar

# RUN ls -la


RUN useradd -ms /bin/bash $USERNAME


# # COPY glpi-10.0.14.tgz ./glpi-10.0.14.tgz

# # RUN chown nginx:nginx ./glpi-10.0.14.tgz

# RUN tar zxvf glpi-10.0.14.tgz --strip-components 1

# # RUN chown -R nginx:nginx ./

# #RUN chmod 775 /app/config/config_db.php
# #RUN chmod 775 /app/config/glpicrypt.key

# RUN chown -R nginx:nginx /app

# # USER nginx
