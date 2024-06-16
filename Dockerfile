FROM node:19.5.0-alpine
WORKDIR /app
COPY ./app .
RUN npm ci
EXPOSE 3000
CMD ["npm", "start"]