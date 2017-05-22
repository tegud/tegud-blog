FROM tegud/docker-ghost-mysql-aws:latest

COPY theme/ /usr/src/ghost/content/themes/tegud

RUN npm install aws-sdk-promise

ENTRYPOINT ["/entrypoint.sh"]

CMD ["npm", "start", "--production"]
