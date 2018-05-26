FROM tegud/docker-ghost-mysql-aws:v18.5.1

COPY theme/ /var/lib/ghost/content.orig/themes/tegud
