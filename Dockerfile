FROM node:18-alpine


WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

ENV HOST=0.0.0.0 PORT=3000 HELLO="WORLD"

EXPOSE ${PORT}

CMD ["npm", "start"]