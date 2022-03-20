FROM nginx

LABEL version="01.0.0" description="Container nginx e node NodeJS" maintainer="marcos"

WORKDIR /app

COPY ./start.sh /start.sh
COPY . .

# RUN sudo curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
# RUN sudo apt-get install -y nodejs
RUN npm install

ENV PORT=3000

EXPOSE 80

CMD [ "/start.sh" ]