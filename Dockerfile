FROM openjdk:9-jre

RUN apt-get --quiet update --yes && \
    apt-get --quiet install --yes --no-install-recommends wget unzip && \
    apt-get --quiet clean --yes && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN wget --quiet --output-document=dynamodb_local.tar.gz https://s3.eu-central-1.amazonaws.com/dynamodb-local-frankfurt/dynamodb_local_latest.tar.gz && \
    tar xvfz dynamodb_local.tar.gz && \
    rm -v dynamodb_local.tar.gz

CMD ["java", "-Djava.library.path=./DynamoDBLocal_lib", "-jar", "DynamoDBLocal.jar", "-sharedDb"]
