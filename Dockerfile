FROM jetty:alpine

ARG NAME
ARG WAR_NAME

COPY ${NAME}/target/${NAME}.war /var/lib/jetty/webapps/${WAR_NAME}.war
