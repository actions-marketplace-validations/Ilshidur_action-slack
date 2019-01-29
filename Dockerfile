FROM mhart/alpine-node:10.15.0

LABEL "com.github.actions.name"="GitHub Action for Slack"
LABEL "com.github.actions.description"="Outputs a message to Slack."
LABEL "com.github.actions.icon"="hash"
LABEL "com.github.actions.color"="red"

LABEL "repository"="https://github.com/Ilshidur/actions"
LABEL "homepage"="https://github.com/Ilshidur/actions/slack"
LABEL "maintainer"="Ilshidur <ilshidur@gmail.com>"
LABEL "version"="1.1.0"

ADD entrypoint.js package.json package-lock.json /
RUN npm ci
RUN chmod +x /entrypoint.js

ENTRYPOINT ["node", "/entrypoint.js"]