FROM openjdk:17-jdk-alpine3.14 as build
WORKDIR /project
COPY ./ ./
RUN apk add --no-cache binutils
RUN ./gradlew app:jlink

FROM alpine:3.14
WORKDIR /app
COPY --from=build /project/app/build/jre jre
ENTRYPOINT jre/bin/app
