FROM consol/tomcat-8.0

RUN apt-get update && apt-get -y install unzip
RUN wget -q http://sourceforge.net/projects/geoserver/files/GeoServer/2.6.2/geoserver-2.6.2-war.zip -O /tmp/geoserver.zip
RUN unzip -q /tmp/geoserver.zip -d /tmp
RUN mv /tmp/geoserver.war /opt/tomcat/webapps/geoserver.war

CMD /opt/tomcat/bin/deploy-and-run.sh

