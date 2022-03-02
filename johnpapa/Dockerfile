FROM node
COPY ./node-hello /app/
WORKDIR /app/
RUN npm install
EXPOSE 3000
ENTRYPOINT ["npm", "start"]
