FROM nginx:latest

RUN apt-get update -y
RUN apt-get install bash curl iputils-ping -y
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
