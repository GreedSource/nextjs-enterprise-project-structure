# Use Node.js 20.5 with Alpine Linux 3.17 as the base image
FROM node:20.5-alpine3.17

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if applicable) to the container
COPY package.json package-lock.json* ./

# Install dependencies
RUN npm install

# Copy the entire project to the container
COPY . .

# Build the Next.js application
RUN npm run build

# Expose the port that the application runs on
EXPOSE 3000

# Define the command to start the application
CMD ["npm", "start"]