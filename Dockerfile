FROM consol/tomcat-8.0

RUN wget -q http://sourceforge.net/projects/geoserver/files/GeoServer/2.5.1/geoserver-2.5.1-war.zip -O /tmp/geoserver.zip

RUN unzip -q /tmp/geoserver.zip -d /tmp

RUN mv /tmp/geoserver.war /opt/tomcat/webapps/geoserver.war

CMD /opt/tomcat/bin/deploy-and-run.sh

