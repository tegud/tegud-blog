FROM tegud/docker-ghost-mysql-aws:v1

COPY theme/ /var/lib/ghost/content.orig/themes/tegud
