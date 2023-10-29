# Use a base Node.js image with version 18.x.x (LTS)
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy the application code into the container
COPY . /app

# Install application dependencies using the local Yarn installation
COPY package.json yarn.lock /app/
RUN yarn install --frozen-lockfile

# Expose port 3000 for the application
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]
