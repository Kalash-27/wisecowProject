# Use a base image, like Ubuntu, Alpine, etc.
FROM ubuntu:latest

# Copy your shell wisecow into the container
COPY wisecow.sh /usr/src/app/wisecow.sh

# Set the working directory
WORKDIR /usr/src/app

# Make the wisecow executable
RUN chmod +x wisecow.sh

# Define the command to run your wisecow
CMD ["./wisecow.sh"]