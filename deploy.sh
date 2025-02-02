#!/bin/bash

# Install dependencies
npm install

# Start the application with PM2
pm2 delete portfolio 2>/dev/null || true
pm2 start npm --name "portfolio" -- start

# Save PM2 configuration
pm2 save

# Display status
pm2 status 