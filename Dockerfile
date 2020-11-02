FROM jenkins/ssh-slave:latest
LABEL maintainer="Vassilis Karapatakis <vassilis.karapatakis@iteam.gr>"

USER root

###########
# Maven
###########
ENV MAVEN_VERSION=3.6.3

RUN curl -fsSL http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share \
    && mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven \
    && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

ENV MAVEN_HOME=/usr/share/maven

###########
# Node.js
###########
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash \
    && apt-get install -y nodejs

USER jenkins

ENTRYPOINT ["setup-sshd"]
