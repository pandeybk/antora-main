# Use node:18 as the base image
FROM node:18

# Set the working directory
WORKDIR /app

# Install Antora
RUN yarn global add @antora/cli
RUN yarn global add @antora/site-generator

# Copy the Antora project to the container
COPY . /app

# Set the volume mount
VOLUME ["/app"]

# Set the default command to run Antora
CMD ["antora", "antora-playbook.yml"]
