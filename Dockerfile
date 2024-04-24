FROM oven/bun:1-slim
ENV NODE_ENV production
ENV PORT 80

EXPOSE 80
WORKDIR /app
COPY . .

RUN bun install --production --ignore-scripts

CMD ["node","."]
