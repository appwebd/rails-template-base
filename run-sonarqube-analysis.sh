#!/bin/bash
sonar-scanner \
  -Dsonar.projectKey=rails-template-base \
  -Dsonar.sources=. \
  -Dsonar.host.url=http://localhost:9000 \
  -Dsonar.login=be3f577f3194625dbbc872f9210ccfe922a160a9
