FROM node:24-alpine
WORKDIR /app

COPY . /app
RUN npm ci
RUN npm run build

EXPOSE 3000

ENTRYPOINT [ "node", "build" ]