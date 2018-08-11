FROM tegud/docker-ghost-mysql-aws:v1.25.4

COPY theme/ /var/lib/ghost/content.orig/themes/tegud
