FROM node:20 AS build

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# More verbose logging to catch the build output location
RUN echo "==== Building the application ====" && \
    npm run build && \
    echo "==== Contents of /app ====" && \
    ls -la /app && \
    echo "==== Checking for build directories ====" && \
    ls -la /app/build 2>/dev/null || echo "No /app/build directory" && \
    ls -la /app/dist 2>/dev/null || echo "No /app/dist directory" && \
    ls -la /app/out 2>/dev/null || echo "No /app/out directory" && \
    ls -la /app/public 2>/dev/null || echo "No /app/public directory"


FROM nginx:latest

COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]