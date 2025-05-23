FROM node:18

WORKDIR /app

COPY . .

RUN npm install
RUN npm install n8n -g
RUN npm install concurrently -g

EXPOSE 3000 5678

CMD concurrently "node app.js" "n8n start"
