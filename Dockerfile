FROM node:12.2.0-alpine

WORKDIR /node

# Copy only package.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all source code
COPY . .

EXPOSE 8000

CMD ["node", "app.js"]

