# Use the official Node.js image from the Docker Hub.
FROM node:14

# Set the working directory inside the container.
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available) to the working directory.
COPY package*.json ./

# Install the application's dependencies.
RUN npm install

# Copy the rest of your application files to the working directory.
COPY . .

# Expose the port the app runs on.
EXPOSE 3000

# Run the application.
CMD ["node", "app.js"]
