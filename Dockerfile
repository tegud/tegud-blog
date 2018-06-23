FROM tegud/docker-ghost-mysql-aws:v1.24.5

COPY theme/ /var/lib/ghost/content.orig/themes/tegud
