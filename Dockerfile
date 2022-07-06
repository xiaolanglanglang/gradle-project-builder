# This file is a template, and might need editing before it works on your project.
FROM eclipse-temurin:17-jdk-jammy

RUN set -o errexit -o nounset \
    && apt-get update \
    && apt-get install --yes \
        docker.io \
    && rm --recursive --force /var/lib/apt/lists/*
