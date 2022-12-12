FROM node:16-alpine as builder

WORKDIR /app

COPY ["package.json","yarn.lock","./"]

RUN yarn install

COPY ["./src","./src"]

COPY ["tsconfig.json","tsconfig.build.json","./"]

RUN yarn build

FROM node:16-alpine as final

WORKDIR /app

COPY --from=builder /app/dist /app/dist/

COPY --from=builder /app/package.json /app/

COPY --from=builder /app/yarn.lock /app/

RUN yarn install --production

ENV PORT=5000

ENV NODE_ENV=production

CMD ["yarn","run","start:prod"]
