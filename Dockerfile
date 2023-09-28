FROM node:16.14.0 as dependencies
WORKDIR /react-style-guide
COPY package.json ./
RUN yarn install

FROM node:16.14.0 as builder
WORKDIR /react-style-guide
COPY . .
COPY --from=dependencies /react-style-guide/node_modules ./node_modules
RUN yarn build

FROM node:16.14.0 as runner
WORKDIR /react-style-guide
# If you are using a custom next.config.js file, uncomment this line.
COPY --from=builder /react-style-guide/next.config.js ./
COPY --from=builder /react-style-guide/public ./public
COPY --from=builder /react-style-guide/.next ./.next
COPY --from=builder /react-style-guide/node_modules ./node_modules
COPY --from=builder /react-style-guide/package.json ./package.json

EXPOSE 9022
CMD ["yarn", "start"]