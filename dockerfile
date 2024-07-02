# Stage 1: Build the Node.js application
FROM node:18-alpine
# Set the working directory
WORKDIR /app
# Copy package.json and package-lock.json to the working directory
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the rest of the application source code to the working directory
COPY ./ ./
# Expose port 4000 to the outside world
EXPOSE 4000
# Command to run the application
CMD ["node", "index.js"]