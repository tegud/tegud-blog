FROM tegud/docker-ghost-mysql-aws


COPY theme/ /var/lib/ghost/content.orig/themes/tegud
