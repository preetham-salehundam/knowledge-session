# source image
from openjdk:slim
COPY ./demo-app/complete/ /usr/src/app
WORKDIR /usr/src/app
RUN apt-get update && apt-get -qy install maven
RUN mvn clean install 
RUN bash -c 'touch target/gs-relational-data-access-0.1.0.jar' 
EXPOSE 8090
