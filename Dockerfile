FROM tegud/docker-ghost-mysql-aws:latest

COPY theme/ /usr/src/ghost/content/themes/tegud
COPY config.js /config-example.js

WORKDIR /usr/src/ghost/content/storage/s3

RUN npm install aws-sdk \
    && chmod a+x /usr/src/ghost/core/server/storage \
    && chmod a+x /usr/src/ghost/core/server/storage/base.js \
    && RUN chown -R root:root /usr/src/ghost/

WORKDIR /usr/src/ghost/

ENTRYPOINT ["/entrypoint.sh"]

CMD ["npm", "start", "--production"]
