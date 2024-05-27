# Gebruik de officiële nginx image als basis
FROM nginx:latest

# Verwijder de standaard index.html van nginx
RUN rm /usr/share/nginx/html/index.html

# Kopieer uw eigen index.html naar de juiste locatie
COPY /home/student/index.html /usr/share/nginx/html/index.html

# Exposeer poort 80
EXPOSE 80

# Start nginx in de voorgrond
CMD ["nginx", "-g", "daemon off;"]
