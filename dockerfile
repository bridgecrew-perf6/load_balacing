FROM nginx


# copy the config files
RUN rm /etc/nginx/conf.d/*
COPY backend.conf /etc/nginx/conf.d/default.conf

# copy the cert and key
COPY nginx-selfsigned.crt /etc/ssl/nginx-selfsigned.crt
COPY nginx-selfsigned.key /etc/ssl/nginx-selfsigned.key
