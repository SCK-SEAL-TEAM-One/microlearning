FROM node:12-alpine
WORKDIR /app
COPY package*.json /app/
RUN npm install
COPY . .
ENV PORT 3000
ENV ENV release
CMD node index.js