#!/bin/bash

docker build -t registry.ott-consult.de/oc/jenkins:latest .
docker push registry.ott-consult.de/oc/jenkins:latest
