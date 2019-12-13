FROM debian:9.5-slim

# Update
RUN apt-get update

# Install packages
RUN apt-get -yq install rsync openssh-client

# Label
LABEL "com.github.actions.name"="rsync deployments"
LABEL "com.github.actions.description"="For deploying code to a webserver via rsync over ssh"
LABEL "com.github.actions.icon"="truck"
LABEL "com.github.actions.color"="yellow"

LABEL "repository"="http://github.com/trendyminds/github-actions-rsync"
LABEL "homepage"="https://github.com/trendyminds/github-actions-rsync"
LABEL "maintainer"="TrendyMinds <contact@trendyminds.com>"

# Copy entrypoint
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
