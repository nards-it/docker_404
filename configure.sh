#!/bin/bash
set -e

# Check if the LOGO_URL environment variable is set
if [ -z "$LOGO_URL" ]; then
  echo "The LOGO_URL environment variable is not set. Using the default logo."
else
  echo "Retrieving logo image from: $LOGO_URL"
  wget -O /usr/share/nginx/html/logo.png "$LOGO_URL"
fi

# Start the Nginx server
exec nginx -g 'daemon off;'
