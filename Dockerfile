# Use a base image
FROM nginx:latest

# Set a build argument with the current timestamp
ARG IMAGE_TAG

# Copy the HTML file to the default Nginx web root directory
COPY simple.html /usr/share/nginx/html/

# Expose port 80 for web traffic
EXPOSE 80

# Run a custom script to tag the image with the timestamp
RUN /bin/bash -c 'echo "$IMAGE_TAG" > /image_tag.txt'
