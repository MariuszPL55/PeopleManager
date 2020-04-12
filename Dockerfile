FROM node:lts

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json ./
COPY package-lock.json ./

RUN npm install
RUN npm install react-scripts -g

COPY . ./

EXPOSE 3000

CMD ["npm", "start"]