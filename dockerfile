FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN  npm install -g aws-cdk

# Copy the rest of the application code
COPY . .

EXPOSE 3000

# Specify the entry point for the CDK CLI
CMD ["nmp", "cdk", "start"]

CMD ["tail", "-f", "/dev/null"]
