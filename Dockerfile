FROM nginx

LABEL version="01.0.0" description="Container nginx e node NodeJS" maintainer="marcos"

COPY ./start.sh /start.sh

RUN sudo curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

EXPOSE 80

CMD [ "./start.sh" ]