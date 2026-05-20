FROM node:16-alpine

WORKDIR /usr/src/app

# Copy dependency manifests first to leverage Docker layer caching
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Express app defaults to port 8080 in this course
EXPOSE 8080

# Command to launch the application
CMD ["npm", "start"]
