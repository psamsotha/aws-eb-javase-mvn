## AWS Elastic Beanstalk Java SE 8 EC2 Image

This is an image used in development when using the Java SE 8 platform
on AWS Elastic Beanstalk. Maven is included as the build system. The
image is built on top of [amazonlinux:2](https://hub.docker.com/_/amazonlinux/).

`java` and `mvn` command work out of the box.


### Usage

```docker
FROM psamsotha/aws-eb-javase-mvn
WORKDIR /app
COPY pom.xml .
RUN mvn dependency=go-offline
COPY src src
RUN mvn install
CMD ["java", "-jar", "target/my-app.jar"]
```

