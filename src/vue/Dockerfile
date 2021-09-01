FROM node:14-alpine

RUN apk add --no-cache --virtual .gyp \
        python \
        make \
        g++

COPY app/package.json /app/

RUN cd /app && npm install

COPY app /app

WORKDIR /app

CMD ["npm", "run", "dev", "--expose"]
# CMD ["tail", "-f", "/dev/null"]
