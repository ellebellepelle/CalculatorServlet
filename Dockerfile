FROM maven:3.9.9-eclipse-temurin-21 AS build
WORKDIR /app

COPY pom.xml .
COPY .mvn .mvn
COPY mvnw .
COPY mvnw.cmd .
COPY src src

RUN chmod +x mvnw || true
RUN ./mvnw clean package -DskipTests

FROM tomcat:11.0-jdk21-temurin

# Gör så att Tomcat lyssnar på Render-porten istället för 8080
RUN sed -i 's/port="8080"/port="10000"/' /usr/local/tomcat/conf/server.xml

# Lägg appen som ROOT så att sidan öppnas direkt på Render-URL:n
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 10000

CMD ["catalina.sh", "run"]