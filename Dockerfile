FROM tegud/docker-ghost-mysql-aws:v2.16.2

COPY theme/ /var/lib/ghost/content.orig/themes/tegud
