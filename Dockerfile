FROM oven/bun:1-slim
ENV NODE_ENV production
ENV PORT 80

EXPOSE 8088
WORKDIR /app
COPY . .

RUN bun install --production --ignore-scripts
RUN bun run build

COPY --from=intermediate /app .

CMD ["node","."]
