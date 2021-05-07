FROM node:14.16.0-alpine3.13

ENV NEXTJS_HOME=/app

RUN mkdir -p $NEXTJS_HOME

WORKDIR $NEXTJS_HOME

COPY . $NEXTJS_HOME

# install dependencies
RUN npm install
RUN npm run build

EXPOSE 3000

ENTRYPOINT ["./docker-entrypoint.sh"]
