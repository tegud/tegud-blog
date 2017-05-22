FROM tegud/docker-ghost-mysql-aws:latest

COPY theme/ /usr/src/ghost/content/themes/tegud

RUN npm install lodash.assign

ENTRYPOINT ["/entrypoint.sh"]

CMD ["npm", "start", "--production"]
