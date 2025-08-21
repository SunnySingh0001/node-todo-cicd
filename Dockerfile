# Node Base Image
FROM node:12.2.0-alpine

#Working Directry
WORKDIR /node

#Copy the Code
RUN npm install
COPY . .

#Install the dependecies
EXPOSE 8000

#Run the code
CMD ["node","app.js"]
