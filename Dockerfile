
FROM node:18-alpine3.17 as builder

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=3000

EXPOSE 3000

CMD [ "npm", "start" ]  # Start the app

#FROM node:18-alpine3.17

#WORKDIR /usr/src/app

#COPY package*.json ./

#RUN npm install --production

#COPY --from=builder /usr/src/app/dist ./dist

#EXPOSE 3000

#CMD [ "npm", "start" ]  # Start the app

# Path: photo-app-ui/src/Dockerfile


