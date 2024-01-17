# Use a Node.js base image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy over the rest of the app code
COPY . .

# Expose port
EXPOSE 4000

# Start the server
CMD ["npm", "start"]