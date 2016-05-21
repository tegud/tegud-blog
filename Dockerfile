FROM ghost:latest

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod u+x /entrypoint.sh

COPY config-example.js /config-example.js

ENTRYPOINT ["/entrypoint.sh"]

CMD ["npm", "start", "--production"]
