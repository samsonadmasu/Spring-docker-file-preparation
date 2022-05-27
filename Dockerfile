FROM openjdk:17-jdk-alpine
ADD target/docker-spring-boot.jar docker-spring-boot.jar
EXPOSE 8085
ENTRYPOINT ["java","-jar","docker-spring-boot.jar"]

#to build and send to the docker
#docker build -f Dockerfile -t docker-spring-boot .

#2
#i change the jar file name to docker-spring-boot in pom file

#FROM openjdk:17-jdk-alpine
#ARG JAR_FILE=build/libs/*.jar
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]



#1. go to docker website and create a repo
#2. docker login samsonadmasu
##### if you need to tag the project ##########

#docker push samsonadmasu/docker-test-spring:tagname

#docker tag local-image:tagname new-repo:tagname
#docker push new-repo:tagname

#docker tag docker-spring-boot:docker-test-spring:latest
#docker push docker-test-spring:latest
#docker push samsonadmasu/docker-test-spring:latest
#docker tag docker-spring-boot:latest docker-test-spring:latest