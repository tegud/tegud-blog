FROM tegud/docker-ghost-mysql-aws:latest

COPY theme/ /usr/src/ghost/content/themes/tegud

WORKDIR /usr/src/ghost/content/storage/ghost-s3

RUN npm install lodash.assign

WORKDIR /usr/src/ghost/

ENTRYPOINT ["/entrypoint.sh"]

CMD ["npm", "start", "--production"]
