FROM node:14.15-alpine
#FROM tekfik/chrome
#create root application folder
#Workdir /usr/src/app
#update packages
#update packages
RUN apk update \
    && apk add --upgrade --no-cache \
    bash \
    bash-completion \
    && rm -rf /var/cache/*

#RUN npm install
#RUN npm install tsc -g
RUN npm install typescript -g


#COPY package.json
#RUN tsc basic.ts
#ENTRYPOINT ["node","basic.js"]


ENV APP_HOME=/home/node/app
USER node
RUN mkdir -p ${APP_HOME}
WORKDIR ${APP_HOME}

#installing dependencies for express
#RUN npm init
COPY package*.json ${APP_HOME}/


RUN npm i express dotenv cors helmet mongoose
RUN npm i -D typescript
RUN npm i -D @types/node @types/express @types/dotenv @types/cors @types/helmet @types/mongoose
#npm install -D @hirez_io/observer-spy


#difference between above two commands

#CMD ["bin/bash"]
#CMD ["node","."]
CMD ["npm","start"]
EXPOSE 3000 8080
