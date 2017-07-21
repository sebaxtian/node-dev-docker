# Use an official Node.js runtime as a parent image
FROM node:alpine
# Create app directory
RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/
# Install app dependencies
COPY ./app/package.json /usr/src/app/
RUN npm install
# Copy the app source
COPY ./app/ /usr/src/app/
# Replace this with your application's default port
EXPOSE 8888
# Run app proyect
CMD ["npm", "start"]
