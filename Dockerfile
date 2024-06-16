FROM node:19.5.0-alpine
WORKDIR /app
COPY package*.json ./
RUN npm i
RUN npm ci
COPY . .
EXPOSE 3000
CMD ["npm", "start"]