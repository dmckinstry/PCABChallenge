FROM node:10

WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install
RUN npm run build --if-present
#RUN npm run unit-test --if-present

# Bundle app source
COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]
