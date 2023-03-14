FROM node:lts-alpine3.17

ARG SANWORM_AUDIT_VER

RUN npm install -g @sandworm/audit@${SANWORM_AUDIT_VER:-1.29.1} && \
    ln -sf /usr/local/lib/node_modules/@sandworm/audit/node_modules/.bin/sandworm /usr/bin/sandworm

ENTRYPOINT ["sandworm"]

CMD ["--help"]