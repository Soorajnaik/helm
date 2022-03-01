#!/bin/bash

git clone https://github.com/Soorajnaik/helm.git
cd docker-assignment
docker build -t sooraj .
docker tag sooraj 883195043912.dkr.ecr.us-west-2.amazonaws.com/sooraj1:sooraj
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 883195043912.dkr.ecr.us-west-2.amazonaws.com
docker push 883195043912.dkr.ecr.us-west-2.amazonaws.com/sooraj1:sooraj
cd ..
helm upgrade --install sooraj-clientapp client-app --namespace sooraj
