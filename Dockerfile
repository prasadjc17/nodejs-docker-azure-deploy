# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy files
COPY package*.json ./
RUN npm install
COPY . .

# Expose port and run the app
EXPOSE 3000
CMD ["npm", "start"]
