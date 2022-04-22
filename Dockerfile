# syntax=docker/dockerfile:1
FROM node:latest
ENV NODE_ENV=production
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production
COPY ./src .
EXPOSE 5000
CMD ["node", "app.js"]

