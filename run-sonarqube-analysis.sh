#!/bin/bash
sonar-scanner \
  -Dsonar.projectKey=PROJECT_NAME \
  -Dsonar.sources=. \
  -Dsonar.host.url=http://localhost:9000 \
  -Dsonar.login=9d475544560b80debbe6567f1519ed8a8e3a828a
