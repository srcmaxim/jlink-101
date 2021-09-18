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

To package your app use:
```
jpackage \
  --runtime-image app/build/jre \
  --module jlink.app/com.github.srcmaxim.jlink.App
```
