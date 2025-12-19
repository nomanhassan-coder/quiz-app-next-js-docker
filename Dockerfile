# Use Node directly
FROM node:18-alpine
WORKDIR /app

# Install dependencies
COPY package.json package-lock.json* ./
RUN npm install

# Copy the rest of the code and build
COPY . .
RUN npm run build

# Set environment and start
EXPOSE 3000
CMD ["npm", "start"]
