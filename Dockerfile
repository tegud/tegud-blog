FROM tegud/docker-ghost-mysql-aws:v1.24.1

COPY theme/ /var/lib/ghost/content.orig/themes/tegud
