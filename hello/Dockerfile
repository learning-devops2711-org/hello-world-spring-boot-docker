FROM amazoncorretto:21 AS build
WORKDIR /java
COPY . /java
RUN ./mvnw package -Dmaven.test.skip=true -e

ENTRYPOINT ["java","-jar","-Xdebug","-Xrunjdwp:server=y,transport=dt_socket,address=8001,suspend=n","/java/target/hello-0.0.1-SNAPSHOT.jar"]

EXPOSE 8080:8080
EXPOSE 8001:8001
