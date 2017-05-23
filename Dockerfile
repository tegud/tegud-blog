FROM tegud/docker-ghost-mysql-aws:latest

COPY theme/ /usr/src/ghost/content/themes/tegud
COPY config.js /config-example.js

WORKDIR /usr/src/ghost/content/storage/s3

RUN npm install aws-sdk

WORKDIR /usr/src/ghost/

ENTRYPOINT ["/entrypoint.sh"]

CMD ["npm", "start", "--production"]
