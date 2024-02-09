FROM node:18.17.1-alpine as dependencies
WORKDIR /react-style-guide
COPY package.json ./
RUN yarn install

FROM node:18.17.1-alpine as builder
WORKDIR /react-style-guide
COPY . .
COPY --from=dependencies /react-style-guide/node_modules ./node_modules
RUN yarn build

FROM node:18.17.1-alpine as runner
WORKDIR /react-style-guide
# If you are using a custom next.config.js file, uncomment this line.
COPY --from=builder /react-style-guide/next.config.js ./
COPY --from=builder /react-style-guide/pages ./pages
COPY --from=builder /react-style-guide/.next ./.next
COPY --from=builder /react-style-guide/node_modules ./node_modules
COPY --from=builder /react-style-guide/package.json ./package.json

EXPOSE 3000
CMD ["yarn", "start"]
