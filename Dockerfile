FROM registry.ott-consult.de/oc/java8:latest
MAINTAINER Joern Ott <joern.ott@ott-consult.de>

ENV JENKINS_VERSION=2.176.2-1.1 \
    GRAPHVIZ_VERSION=2.40.20161221.0239-1 \
    APP_USER=jenkins \
    APP_UID=20001 \
    APP_GROUP=jenkins \
    APP_GID=20001 \
    APP_HOME=/var/lib/jenkins \
    JENKINS_HOME=/var/lib/jenkins \
    JENKINS_INSTALL_SKIP_CHOWN=false \
    JENKINS_JAVA_OPTIONS=-Djava.awt.headless=true \
    JENKINS_ENABLE_ACCESS_LOG=no \
    JENKINS_PORT=8080 \
    JENKINS_LISTEN_ADDRESS="" \
    JENKINS_HTTPS_PORT="" \
    JENKINS_HTTPS_KEYSTORE="" \
    JENKINS_HTTPS_KEYSTORE_PASSWORD="" \
    JENKINS_HTTPS_LISTEN_ADDRESS="" \
    JENKINS_DEBUG_LEVEL=5 \
    JENKINS_ENABLE_ACCESS_LOG=no \
    JENKINS_HANDLER_MAX=100 \
    JENKINS_HANDLER_IDLE=20 \
    JENKINS_ARGS="" \
    GIT_COMMIT="" \
    IMAGE_HISTORY=""


COPY src /

RUN /tmp/install/oc-jenkins.sh

EXPOSE 8080

ENTRYPOINT /entrypoint
