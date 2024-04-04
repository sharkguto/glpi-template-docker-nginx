FROM bitnami/nginx:latest

#COPY ./devops/nginx.conf /opt/bitnami/nginx/conf/server_blocks/glpi.conf

# RUN chown -R nginx:nginx /opt/bitnami/nginx/conf/vhosts
# RUN chmod 755 /opt/bitnami/nginx/conf/vhosts