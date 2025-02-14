FROM node:20-slim AS builder
WORKDIR /usr/src/app
COPY package.json .
COPY package-lock.json* .
RUN npm ci

FROM builder AS development
WORKDIR /usr/src/app
COPY --from=builder /usr/src/app/ /usr/src/app/
COPY . .
# CMD ["npx", "quartz", "build", "--serve"]
CMD ["npm", "run", "dev"]
