#!/bin/sh
set -x
set -e
set -o errexit

MVN_VERSION=$(mvn -q \
    -Dexec.executable="echo" \
    -Dexec.args='${project.version}' \
    --non-recursive \
    org.codehaus.mojo:exec-maven-plugin:1.3.1:exec)
mv target/detetive-${MVN_VERSION}.jar /opt/detetive