FROM docker:17.09.1-ce-git

# Install python and dependencies
RUN apk update && apk add --update python python-dev py-pip build-base

# Install AWS CLI & ecs-deploy
RUN pip install awscli ecs-deploy --upgrade --user

# Add pip package destination to PATH
RUN echo 'export PATH="/root/.local/bin:${PATH}"' >> /etc/profile

CMD ["ash", "--login"]
