FROM klakegg/hugo:0.77.0-ext-alpine AS build
COPY . /src
RUN hugo

FROM nginx:alpine
COPY --from=build /src/public /usr/share/nginx/html
