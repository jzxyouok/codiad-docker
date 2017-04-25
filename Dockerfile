FROM php:7-apache
MAINTAINER Aaron Xiao <xiaoxiangquan@gmail.com>

# Shortcut to the workspace you generally use.
VOLUME /home/ws
# Shortcuts to some host directories that you want to be visible from container, such as additional
# workspaces, root of host and data disk.
VOLUME /home/ws1
VOLUME /home/ws2
VOLUME /home/host
VOLUME /home/data

COPY Codiad-v.2.8.1/ /var/www/html/
RUN chmod 777 \
  /var/www/html/workspace \
  /var/www/html/plugins \
  /var/www/html/themes \
  /var/www/html/data