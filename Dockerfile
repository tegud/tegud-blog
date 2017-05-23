FROM tegud/docker-ghost-mysql-aws:latest

COPY theme/ /usr/src/ghost/content/themes/tegud
COPY config.js /config-example.js

ENTRYPOINT ["/entrypoint.sh"]

CMD ["npm", "start", "--production"]
