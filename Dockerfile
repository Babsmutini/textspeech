FROM node:17-alpine

WORKDIR /application

COPY package.json .

RUN yarn install 

COPY . .

EXPOSE 3000

CMD ["yarn", "start"]