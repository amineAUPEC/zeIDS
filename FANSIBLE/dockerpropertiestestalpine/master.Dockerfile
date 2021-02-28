FROM williamyeh/ansible:alpine3
# FROM williamyeh/ansible:mini-alpine3
RUN apk add --no-cache --update && apk add vim python net-tools busybox-extras curl