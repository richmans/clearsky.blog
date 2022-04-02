FROM alpine as build
RUN apk --no-cache add bash hugo
COPY ./ /src
WORKDIR /src
RUN /usr/bin/hugo

FROM nginx:alpine

#COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

COPY --from=build /src/public /usr/share/nginx/html

WORKDIR /usr/share/nginx/html