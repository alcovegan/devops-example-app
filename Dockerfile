FROM node:20

ENV PATH="$PATH:node_modules/.bin"

RUN apt-get update && apt-get install -y make

WORKDIR /app

COPY package*.json ./
RUN npm install
# RUN npm install -g fastify

COPY . .

# RUN chmod +x bin/start.sh

CMD ["bin/start.sh"]
