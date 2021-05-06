
## Building workflow (for new versions)

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

6. If everything went well, tag the Git repo and push the tag

        git tag -a <tag: v0.1.0> -m 'version <version: 0.1.0>'
        git push origin <tag: v0.1.0>


## TODO

* Set up automated builds on Docker Hub and update workflow
