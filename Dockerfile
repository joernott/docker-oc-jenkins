FROM registry.ott-consult.de/oc/java8:latest
MAINTAINER Joern Ott <joern.ott@ott-consult.de>

ENV JENKINS_VERSION=2.121.2-1.1 \
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
    IMAGE_HISTORY=" « jenkins-docker-oc-java8-30 « jenkins-docker-oc-base-33 « centos/7 declare -x OLDPWD declare -x PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin declare -x PWD=/ declare -x SHLVL=1 declare -x JAVA_BUILD_NUMBER=b13 declare -x JAVA_CHECKSUM=48af6afd56252f5e6641fd0ad9009c056ee5d178129b4824cef4b976a655d375 declare -x JAVA_DL_PATH=96a7b8442fe848ef90c96a2fad6ed6d1/ declare -x JAVA_HOME=/usr/java/jdk1.8.0_181-amd64 declare -x JAVA_VERSION=8u181 declare -x JCE_CHECKSUM=f3020a3922efd6626c2fff45695d527f34a8020e938a49292561f18ad1320b59 declare -x OLDPWD declare -x PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin declare -x PWD=/ declare -x SHLVL=1"


COPY src /

RUN /tmp/install/oc-jenkins.sh

EXPOSE 8080

ENTRYPOINT /entrypoint
