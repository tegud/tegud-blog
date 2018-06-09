FROM tegud/docker-ghost-mysql-aws:v18.16.4

COPY theme/ /var/lib/ghost/content.orig/themes/tegud
