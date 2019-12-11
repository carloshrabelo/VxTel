FROM node:10
WORKDIR /home/node/app
COPY --chown=node:node package.json .
RUN npm install
COPY . .
RUN npm run build
USER node
EXPOSE 8080
CMD [ "npm", "start" ]