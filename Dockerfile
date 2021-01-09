FROM ubuntu:16.04
RUN apt-get update && apt-get install -y curl && apt-get install -y sudo
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN sudo apt install -y nodejs
WORKDIR /dist
COPY . .
RUN npm install
ENV API_URL=http://localhost:8000
EXPOSE 5000 5000
CMD [ "npm", "start" ]