#!/bin/bash
set -e
set -x

curl -sSo /tmp/install/functions.sh https://raw.githubusercontent.com/joernott/docker-oc-install-library/master/install_functions.sh
source /tmp/install/functions.sh

function install_jenkins_repo() {
   cat >/etc/yum.repos.d/jenkins.repo <<EOF
[jenkins]
name=Jenkins-stable
baseurl=http://pkg.jenkins.io/redhat-stable
gpgcheck=1
EOF
    rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
}

install_jenkins_repo
add_repos graphviz
create_user_and_group
install_software jenkins-${JENKINS_VERSION} graphviz graphviz-lang-java graphviz-plugins
cleanup
