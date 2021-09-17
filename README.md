# Java jlink 101
> gradle-version: 7.2  
> java-version: 17

Build java docker image with **38.6MB**

Build in Docker:
```
docker build . -t jlink-101
docker run jlink-101
```

Build on machine:
```
./gradlew app:jlink
```
