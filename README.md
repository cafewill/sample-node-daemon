Simple Node.js Daemon 

Step #1 code index.js

Step #2 Dockerfile

    FROM node:14
    WORKDIR /cube
    COPY package*.json /cube
    RUN npm install
    COPY . /cube
    EXPOSE 8080
    CMD [ "npm", "start" ]

Step #3 Docker build

    sudo docker build -t node-daemon .

Step #3 Docker run and connect localhost:5000 or localhost:8282

    sudo docker run -p 5000:8080 node-daemon
    sudo docker run -p 8282:8080 node-daemon

## See Also

* https://github.com/cafewill/spring-daemon-devel
* https://github.com/cafewill/node-daemon-devel
* https://github.com/cafewill/flask-daemon-devel
* https://github.com/cafewill/fastapi-daemon-devel

* https://github.com/cafewill/simple-crud-gradle-jpa-h2-thymeleaf
* https://github.com/cafewill/simple-crud-maven-jpa-h2-freemarker
