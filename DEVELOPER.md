
## Building

When building a new version of an image, follow these steps:

1. Change the version LABEL in the Dockerfile
2. Build the image with the `latest` tag (default)

        docker build -t psamsotha/aws-eb-javase-mvn .

3. Tag the image with the new version

        docker tag psamsotha/aws-eb-javase-mvn:latest psamsotha/aws-eb-javase-mvn:<version>

4. Push the `latest` tagged image

        docker push psamsotha/aws-eb-javase-mvn:latest

5. Push the new version tagged image

        docker push psamsotha/aws-eb-javase-mvn:<version>
