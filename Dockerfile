FROM node:lts-alpine3.17
RUN npm install -g @sandworm/audit@1.29.1
CMD ["sandworm"]