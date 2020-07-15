set -e
cd ../core
gradle build
cp cadc-util/build/libs/cadc-util-1.2.27.jar ../example-tap/src/main/webapp/WEB-INF/lib/
cp cadc-rest/build/libs/cadc-rest-1.2.11.jar ../example-tap/src/main/webapp/WEB-INF/lib/
#
cd ../uws
gradle build
cp cadc-uws-server/build/libs/cadc-uws-server-1.2.5.jar ../example-tap/src/main/webapp/WEB-INF/lib/
#
cd ../cadc-tap-server
gradle build
cp ../cadc-tap-server/build/libs/cadc-tap-server-1.1.13.jar ../example-tap/src/main/webapp/WEB-INF/lib/
#
cd ../example-tap
gradle build
cp build/libs/example-tap-1.1.war ~/tomcat/webapps/tap.war

