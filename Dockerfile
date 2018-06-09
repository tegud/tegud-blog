FROM tegud/docker-ghost-mysql-aws:v18.6.4

COPY theme/ /var/lib/ghost/content.orig/themes/tegud
