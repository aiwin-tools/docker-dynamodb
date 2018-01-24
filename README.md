docker-dynamodb
================

[Docker](https://www.docker.com/) image of [Dynamodb](https://docs.aws.amazon.com/es_es/amazondynamodb/latest/developerguide/DynamoDBLocal.html) with necessary tools for build our projects

This image adds several tools used by our integration and deployment processes, like jq, curl, etc

Usage
--------------

    docker run -it -p8000:8000 --rm --name dynamodb aiwin/dynamodb-local:latest


Build
--------------

Run `build.sh` script to build and push the image to default location

    aiwin/dynamodb-local:latest

If you want to build and push the image to diferent location, define the following
variables before the execution of the script:

- REPOSITORY. Docker repository
- REGISTRY. Docker registry
- TAG. Tag or version
