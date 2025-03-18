# # Use the official Nginx image
FROM nginx:latest   

# # Copy the WAR file (converted to static content or built into HTML/CSS/JS) into the Nginx container
COPY **/*.war /usr/share/nginx/html/

# # Expose port 80 (default for HTTP)
EXPOSE 80

# # Start Nginx
CMD ["nginx", "-g", "daemon off;"]


# # Use Ubuntu as the base image
# FROM ubuntu:latest  

# # Install Apache (lightweight web server)
# RUN apt update && apt install -y apache2 && apt clean  

# # Set the working directory
# WORKDIR /var/www/html  

# COPY . /var/www/html/
# # Copy your HTML file into the container
# # COPY index.html /var/www/html/index.html  

# # Expose port 80 for web traffic
# EXPOSE 80  

# # Start Apache in the foreground
# CMD ["apachectl", "-D", "FOREGROUND"]



