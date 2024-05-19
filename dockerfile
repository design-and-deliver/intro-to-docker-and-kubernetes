# Use the official Node.js image.
FROM node:14

# Create and change to the app directory.
WORKDIR /usr/src/app

# Copy application files.
COPY app.js .

# Expose the port the app runs on.
EXPOSE 3000

# Run the application.
CMD ["node", "app.js"]