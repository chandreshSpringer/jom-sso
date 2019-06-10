team: production
pipeline: jom-sso
slack_channel: "#jom-frontend-builds"

repo:
  branch: master

tasks:
- type: run
  name: build
  script: build.sh
  save_artifacts:
  - .
  docker:
    image: nikolaik/python-nodejs:latest

- type: deploy-cf
  name: deploy-dev
  api: ((cloudfoundry.api-snpaas))
  space: jom
  manual_trigger: false
  manifest: manifest-files/manifest-dev.yml
  deploy_artifact: ./dist


- type: deploy-cf
  name: deploy-live
  api: ((cloudfoundry.api-snpaas))
  space: jom
  manual_trigger: true
  manifest: manifest-files/manifest-live.yml
  deploy_artifact: ./dist
