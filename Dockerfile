FROM node:14

WORKDIR /cube

COPY package*.json /cube
RUN npm install
COPY . /cube

EXPOSE 8080
CMD [ "npm", "start" ]

