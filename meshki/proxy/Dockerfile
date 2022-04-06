FROM nginx:latest

RUN apt-get update -y
RUN apt-get install bash curl iputils-ping certbot -y
ADD proxy.sh .
RUN chmod +x proxy.sh
EXPOSE 80 
EXPOSE 443

CMD ./proxy.sh
