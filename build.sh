#!/bin/bash

docker build --no-cache=true -t registry.ott-consult.de/oc/jenkins:latest .
docker push registry.ott-consult.de/oc/jenkins:latest
