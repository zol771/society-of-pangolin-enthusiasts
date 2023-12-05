# This dockerfile doesn't build the app itself. It expects _site to exist after
# npm run build has been executed to build the site (check .github/workflows for an example)
FROM nginx

# Copy in the nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the static website into the default location
COPY ./_site /usr/share/nginx/html

EXPOSE 8080