FROM maven:3.8.4-openjdk-11-slim

WORKDIR /usr/src/selenium-tests

COPY pom.xml    /usr/src/selenium-tests/pom.xml
COPY src/test/resources/RepositoryMap.xml   /usr/src/selenium-tests/src/test/java/resources/RepositoryMap.xml

RUN [ "/usr/local/bin/mvn-entrypoint.sh", "mvn", "dependency:go-offline" ]
