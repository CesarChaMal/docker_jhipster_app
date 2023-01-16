FROM openjdk:8-jre-alpine

ENV SPRING_OUTPUT_ANSI_ENABLED=ALWAYS \
    JHIPSTER_SLEEP=0 \
    JAVA_OPTS="-Xmx512m -Xms256m"

CMD echo "The application will start in ${JHIPSTER_SLEEP}s..." && \
    sleep ${JHIPSTER_SLEEP} && \
    java ${JAVA_OPTS} -Djava.net.preferIPv4Stack=true -Djava.security.egd=file:/dev/./urandom -jar /app.war

#EXPOSE 7780
#EXPOSE 7780 1306
EXPOSE 7780 1306 9010 9020 9003 9004

ADD *.war /app.war
