FROM tegud/docker-ghost-mysql-aws:v18.6.2

COPY theme/ /var/lib/ghost/content.orig/themes/tegud
