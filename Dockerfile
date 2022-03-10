FROM alpine:3.15 AS builder

WORKDIR /app

RUN \
  sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
  apk add --no-cache --update nodejs npm

COPY package*.json /app/

RUN npm install --production

FROM alpine:3.15

WORKDIR /app

RUN \
  sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
  apk add --no-cache --update nodejs npm

COPY --from=builder /app/node_modules ./node_modules

COPY . /app/

EXPOSE 6789

CMD ["npm", "start"]

# ENTRYPOINT ["npm", "run"]

# CMD ["start"]