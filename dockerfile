docker login -u balurayachoti -p Sneha@1234

docker pull balurayachoti/test:latest

FROM balurayachoti/test:latest

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 3000
CMD [ "node", "index.js" ]
