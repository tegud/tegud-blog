FROM tegud/docker-ghost-mysql-aws:v1

COPY theme/ /usr/src/ghost/content/themes/tegud

ENTRYPOINT ["/entrypoint.sh"]

CMD ["npm", "start", "--production"]
