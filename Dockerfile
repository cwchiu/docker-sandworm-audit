FROM node:lts-alpine3.17

ARG SANWORM_AUDIT_VER

RUN npm install -g @sandworm/audit@${SANWORM_AUDIT_VER:-1.29.1} 

ENTRYPOINT ["sandworm-audit"]

CMD ["--help"]