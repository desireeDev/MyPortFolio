#declare the base image
FROM nginx:alpine

# Set the working directory

WORKDIR /usr/share/nginx/html

# Copy the static files from the host to the container(in the work directory)
#first dot reprsents the current directory and the second dot represents the current directory in the container
COPY . .

# Expose port  nginx is running on port 80 by default
EXPOSE 80
# Start nginx server
CMD ["nginx", "-g", "daemon off;"]