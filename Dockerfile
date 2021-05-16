# This file contains the setup instructions for our Docker Image

# Building up from an existing Image
FROM node

# Setting the working directory for our Image
WORKDIR /app

# Optimization -- avoids having to run "npm install" for every image build if dependencies haven't changed
COPY package.json /app

# Commands which need to be executed for our Image to be interpreted as intended
RUN npm install

# Which files from our local machine should be added to our Image
COPY . /app

# Exposing a port to our local system
EXPOSE 80

# Commands which need to be executed once a Container is running based on this Image template
CMD ["node", "server"]